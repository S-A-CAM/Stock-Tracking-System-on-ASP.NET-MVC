//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StokYonetimSistemi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class tblDepartman
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblDepartman()
        {
            this.tblPersonel = new HashSet<tblPersonel>();
            this.tblRole = new HashSet<tblRole>();
        }
    
        public int departmanId { get; set; }
        [Display(Name ="Departman")]
        [Required(ErrorMessage ="L�tfen Departman Ad�n� Giriniz")]
        [StringLength(50,ErrorMessage ="Departman Ad� 50 den Fazla Karakterden Olu�amaz")]
        [RegularExpression("^[A-Za-z0-9������i���_ ]{0,50}$", ErrorMessage = "Departman Ad� �zel Karakterlerden(',-,? vs.) Olu�amaz ve 50 Karakterden Fazla Olamaz")]
        public string departmanAd { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblPersonel> tblPersonel { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblRole> tblRole { get; set; }
    }
}
