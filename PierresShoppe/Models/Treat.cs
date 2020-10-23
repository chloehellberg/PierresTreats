using System.Collections.Generic;

namespace PierresShoppe.Models
{
  public class Treat
  {
    public Treat()
    {
      this.Flavors = new HashSet<FlavorTreat>();
    }

    public int FlavorId { get; set; }
    public string TreatName { get; set; }
    public virtual ICollection<FlavorTreat> Flavors { get; set; }
  }
}