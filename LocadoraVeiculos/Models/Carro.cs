//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LocadoraVeiculos.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Carro
    {
        public int carroId { get; set; }
        public string nome { get; set; }
        public string cor { get; set; }
        public int ano { get; set; }
        public int TipoVeiculo_tipoVeiculoId { get; set; }
    
        public virtual TipoVeiculo TipoVeiculo { get; set; }
    }
}
