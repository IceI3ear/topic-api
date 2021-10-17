using APIBlog.Models;
using APIVanTai.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace APIVanTai.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TopicDataController : ControllerBase
    {
        KMA_DBSContext db = new KMA_DBSContext();

        // GET: api/<GetData>
        [HttpGet]
        [Route("GetAll")]
        public IActionResult GetAll()
        {
           
            var blog = (from a in db.Topics
                        join b in db.UserProfiles on a.UserID equals b.UserId into group1
                        from b in group1.DefaultIfEmpty()
                        join c in db.AspNetUsers on a.StudentID equals c.Id into group2
                        from c in group2.DefaultIfEmpty()
                        select new
                        {
                            a.ID,
                            a.TopicName,
                            a.StartDate,
                            a.StartRegister,
                            a.EndDate,
                            a.EndRegister,
                            StudentName = c.FullName,
                            TeacherName = b.FullName,
                            MajorName = a.Speciality != null ? a.Speciality.Name : "",
                            MajorID = a.SpecialityID,
                            b.UserId,
                            a.StudentID,
                            a.Description,
                            a.LinkFile,

                        }
                             );

            if (blog == null)
            {
                return NotFound("Not found any item in Topic");
            }

            return Ok(blog);
        }

        // GET api/<GetData>/5
        [HttpGet]
        [Route("GetByID")]
        public IActionResult GetByID(int id)
        {
            var test = db.Topics.Include(x=>x.Student).Include(x => x.Teacher).FirstOrDefault(x => x.ID == id);
            if (test == null)
            {
                return NotFound("Not found Topic with id: " + id);
            }
            return Ok(test);
        }

        [HttpGet]
        [Route("GetByName")]
        public IActionResult GetByName(string name)
        {
            var test = db.Topics.Include(x => x.Student).Include(x => x.Teacher).Include(x => x.Speciality).FirstOrDefault(x => x.TopicName == name);
            if (test == null)
            {
                return NotFound("Not found Topic with name: " + name);
            }
            return Ok(test);
        }

        [HttpGet]
        [Route("GetByStudentID")]
        public IActionResult GetByStudentID(string id)
        {
            var comment =  (from a in db.Topics.Where(y => y.StudentID == id)
                                      join b in db.UserProfiles on a.UserID equals b.UserId into group1
                                      from b in group1.DefaultIfEmpty()
                                      join c in db.AspNetUsers on a.StudentID equals c.Id into group2
                                      from c in group2.DefaultIfEmpty()
                                      select new
                                      {
                                          a.ID,
                                          a.TopicName,
                                          a.StartDate,
                                          a.StartRegister,
                                          a.EndDate,
                                          a.EndRegister,
                                          StudentName = c.FullName,
                                          TeacherName = b.FullName,
                                          MajorName = a.Speciality != null ? a.Speciality.Name : "",
                                          MajorID = a.SpecialityID,
                                          b.UserId,
                                          a.StudentID,
                                          a.Description,
                                          a.LinkFile,
                                      }
                             );

            if (comment == null)
            {
                return NotFound("Not found any comment with student id: " + id);
            }
            return Ok(comment);
        }

        [HttpGet]
        [Route("GetByTeacherID")]
        public IActionResult GetByTeacherID(int id)
        {
            var progress = db.ProgressOfTopics.ToList();
            var groupBy = progress.GroupBy(x => x.TopicID);
            var listPoint = new List<CompletePoint>();

            foreach(var item in groupBy)
            {
                var sum = new CompletePoint();
                sum.TopicID = item.First().TopicID ?? default;
                sum.Point = 0;
                var count = 0;
                foreach (var point in item)
                {
                    sum.Point += point.Complete ?? default;
                }
                listPoint.Add(sum);
            }
            var test = db.Topics.Where(y => y.UserID == id).FirstOrDefault();
            var comment = (from a in db.Topics.Where(y => y.UserID == id)
                           join b in db.UserProfiles on a.UserID equals b.UserId into group1
                           from b in group1.DefaultIfEmpty()
                           join c in db.AspNetUsers on a.StudentID equals c.Id into group2
                           from c in group2.DefaultIfEmpty()
                           select new
                           {
                               a.ID,
                               a.TopicName,
                               a.StartDate,
                               a.StartRegister,
                               a.EndDate,
                               a.EndRegister,
                               StudentName = c.FullName,
                               TeacherName = b.FullName,
                               MajorName = a.Speciality != null ? a.Speciality.Name : "",
                               MajorID = a.SpecialityID,
                               TeacherID = b.UserId,
                               a.StudentID,
                               Point = 0,
                               a.Description,
                               a.LinkFile,
                               //Complete = listPoint.Where(x=>x.TopicID == a.ID).FirstOrDefault() != null ? listPoint.Where(x => x.TopicID == a.ID).Select(x=>x.Point).FirstOrDefault() : 0
                           }).AsEnumerable().Select( x=> new TopicTeacherInfo { 
                               ID = x.ID,
                               TopicName = x.TopicName,
                               StartDate = x.StartDate,
                               StartRegister = x.StartRegister,
                               EndDate = x.EndDate,
                               EndRegister = x.EndRegister,
                               StudentName = x.StudentName,
                               TeacherName = x.TeacherName,
                               MajorName = x.MajorName,
                               MajorID = x.MajorID,
                               TeacherID = x.TeacherID,
                               StudentID = x.StudentID,
                               Point = listPoint.Where(y => y.TopicID == x.ID).Select(y => y.Point).FirstOrDefault(),
                               Description = x.Description,
                               LinkFile = x.LinkFile
                           });
            foreach(var item in comment)
            {
                if(listPoint.Where(y => y.TopicID == item.ID).Select(y => y.Point).FirstOrDefault() != 0)
                {
                    item.Point = listPoint.Where(y => y.TopicID == item.ID).Select(y => y.Point).FirstOrDefault();
                }    
            }    

            if (comment == null)
            {
                return NotFound("Not found any comment with student id: " + id);
            }
            return Ok(comment);
        }

        [HttpPost]
        [Route("RegisterTopic")]
        public IActionResult RegisterTopic([FromBody] TopicPost post)
        {
            try
            {
                var topic = db.Topics.Where(x => x.ID == post.TopicID).FirstOrDefault();
                topic.StudentID = post.UserID;
                db.SaveChanges();
            }
            catch (Exception e)
            {
                throw new ArgumentException($"We can't register topic for userID: {post.UserID} in Topic ID: {post.TopicID}. Error: {e}.");
            }

            return Ok();
        }

        [HttpPost]
        [Route("CancelTopic")]
        public IActionResult CancelTopic([FromBody] TopicPost post)
        {
            try
            {
                var topic = db.Topics.Where(x => x.ID == post.TopicID).FirstOrDefault();
                topic.StudentID = null;
                db.SaveChanges();
            }
            catch (Exception e)
            {
                throw new ArgumentException($"We can't cancel topic for Topic ID: {post.TopicID}. Error: {e}.");
            }

            return Ok();
        }

    }
}
