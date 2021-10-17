using System.ComponentModel.DataAnnotations;

namespace APIVanTai.Authentication
{
    public class ProgressChange
    {
        public int ProgressID { get; set; }

        public string LinkFile { get; set; }
        public string Description { get; set; }
        public int? Complete { get; set; }
        public bool? Status { get; set; }
    }
}
