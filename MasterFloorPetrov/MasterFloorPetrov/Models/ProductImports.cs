//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterFloorPetrov.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProductImports
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductImports()
        {
            this.ProductTypeImport = new HashSet<ProductTypeImport>();
        }
    
        public int id { get; set; }
        public int idTypeProduct { get; set; }
        public string NameProduct { get; set; }
        public int Articul { get; set; }
        public decimal MinCost { get; set; }
    
        public virtual TypeProductId TypeProductId { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductTypeImport> ProductTypeImport { get; set; }
    }
}
