using APIBlog.Models;
using APIVanTai.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace APIVanTai.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProgressOfTopicController : ControllerBase
    {
        KMA_DBSContext db = new KMA_DBSContext();

        // GET: api/<GetData>

        // GET api/<GetData>/5
        [HttpGet]
        [Route("GetByID")]
        public IActionResult GetByID(int id)
        {
            var test = (from a in db.ProgressOfTopics.Where(x => x.ID == id)
                        join b in db.Topics on a.TopicID equals b.ID into group1
                        from b in group1.DefaultIfEmpty()
                        select new
                        {
                            a.ID,
                            b.TopicName,
                            b.Teacher.FullName,
                            b.Student.UserName,
                            a.StartDate,
                            a.EndDate,
                            a.Title,

                            //a.Atitule,
                            //a.Effort,
                            a.Complete,
                            a.Point,
                            a.Description,
                            a.Status,
                            a.LinkFile

                        });

            if (test == null)
            {
                return NotFound("Not found progress with id: " + id);
            }
            return Ok(test);
        }

        [HttpGet]
        [Route("GetForStudentID")]
        public IActionResult GetForStudentID(string id)
        {
            var test = (from a in db.ProgressOfTopics.Where(x => x.Topic.StudentID == id)
                        join b in db.Topics on a.TopicID equals b.ID into group1
                        from b in group1.DefaultIfEmpty()
                        select new
                        {
                            a.ID,
                            b.TopicName,
                            b.Teacher.FullName,
                            b.Student.UserName,
                            a.StartDate,
                            a.EndDate,
                            //a.Atitule,
                            //a.Effort,
                            a.Complete,
                            a.Point,
                            a.Description,
                            a.Status,
                            a.Title,
                            a.LinkFile

                        });

            if (test == null)
            {
                return NotFound("Not found progress lisr: " + test);
            }
            return Ok(test);
        }
        [HttpGet]
        [Route("GetForTopicID")]
        public IActionResult GetForTopicID(int? id)
        {
            var test = (from a in db.ProgressOfTopics.Where(x => x.TopicID == id)
                        join b in db.Topics on a.TopicID equals b.ID into group1
                        from b in group1.DefaultIfEmpty()
                        select new
                        {
                            a.ID,
                            b.TopicName,
                            b.Teacher.FullName,
                            b.Student.UserName,
                            a.StartDate,
                            a.EndDate,
                            //a.Atitule,
                            //a.Effort,
                            a.Complete,
                            a.Point,
                            a.Description,
                            a.Status,
                            a.Title,
                            a.LinkFile


                        });

            if (test == null)
            {
                return NotFound("Not found progress lisr: " + test);
            }
            return Ok(test);
        }

        [HttpPost]
        [Route("ChangeInfoProgressInStudent")]
        public IActionResult ChangeInfoProgressInStudent(ProgressChange progress)
        {
            var check = true;
            try
            {
                var regis = db.ProgressOfTopics.Where(x => x.ID == progress.ProgressID).FirstOrDefault();
                regis.Description = progress.Description;
                regis.LinkFile = progress.LinkFile;

                db.SaveChanges();
            }
            catch (Exception e)
            {
                check = false;
            }

            if (!check)
            {
                return NotFound("Save not success");
            }

            return Ok();
        }

        [HttpPost]
        [Route("ChangeInfoProgressInTeacher")]
        public IActionResult ChangeInfoProgressInTeacher(ProgressChange progress)
        {
            var check = true;
            try
            {
                var regis = db.ProgressOfTopics.Where(x => x.ID == progress.ProgressID).FirstOrDefault();
              
                regis.Complete = progress.Complete;

                db.SaveChanges();
            }
            catch (Exception e)
            {
                check = false;
            }

            if (!check)
            {
                return NotFound("Save not success");
            }

            return Ok();
        }

        [HttpPost]
        [Route("ChangeStatus")]
        public IActionResult ChangeStatus(ProgressChange progress)
        {
            var check = true;
            try
            {
                var regis = db.ProgressOfTopics.Where(x => x.ID == progress.ProgressID).FirstOrDefault();
                regis.Status = progress.Status;

                db.SaveChanges();
            }
            catch (Exception e)
            {
                check = false;
            }

            if (!check)
            {
                return NotFound("Save not success");
            }

            return Ok();
        }

    }
}
