using System;
using System.ComponentModel.DataAnnotations;

namespace APIVanTai.Authentication
{
    public class TopicTeacherInfo
    {
        public int ID { get; set; }
        public string TopicName { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? StartRegister { get; set; }
        public DateTime? EndDate { get; set; }
        public DateTime? EndRegister { get; set; }
        public string StudentName { get; set; }
        public string TeacherName { get; set; }
        public string MajorName { get; set; }
        public int? MajorID { get; set; }
        public int? TeacherID { get; set; }
        public string StudentID { get; set; }
        public int Point { get; set; }
        public string Description { get; set; }
        public string LinkFile { get; set; }
    }
}
