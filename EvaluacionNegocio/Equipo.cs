using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionNegocio
{
    public class Equipo : IPersistente
    {
        public int EquipoId { get; set; }
        public string NombreEquipo { get; set; }
        public int CantidadJugadores { get; set; }
        public string NombreDT { get; set; }
        public string TipoEquipo { get; set; }
        public string CapitanEquipo { get; set; }
        public bool TieneSub21 { get; set; } // En la base de datos es del tipo bit
        

        // Método para crear registro de un equipo
        public bool Create()
        {
            try
            {
                CommonBC.EquipoModelo.spEquipoSave(                    
                    this.NombreEquipo,
                    this.CantidadJugadores,
                    this.NombreDT,
                    this.TipoEquipo,
                    this.CapitanEquipo,
                    this.TieneSub21
                    );

                CommonBC.EquipoModelo.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        // Método para leer registro de un equipo
        public bool Read(int EquipoId)
        {
            try
            {
                EvaluacionDALC.VwGetEquipos equipo = CommonBC.EquipoModelo.VwGetEquipos.First(eq => eq.EquipoId == EquipoId);
                
                this.EquipoId = equipo.EquipoId;
                this.NombreEquipo = equipo.NombreEquipo;
                this.CantidadJugadores = equipo.CantidadJugadores;
                this.NombreDT = equipo.NombreDT;
                this.TipoEquipo = equipo.TipoEquipo;
                this.CapitanEquipo = equipo.CapitanEquipo;
                this.TieneSub21 = equipo.TieneSub21;                

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        // Método para actualizar registro de un equipo
        public bool Update(int EquipoId)
        {
            try
            {
                CommonBC.EquipoModelo.spEquipoUpdateById(
                    this.EquipoId,
                    this.NombreEquipo,
                    this.CantidadJugadores,
                    this.NombreDT,
                    this.TipoEquipo,
                    this.CapitanEquipo,
                    this.TieneSub21
                );

                CommonBC.EquipoModelo.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        // Método para eliminar registro de equipo
        public bool Delete(int EquipoId)
        {
            try
            {
                CommonBC.EquipoModelo.spEquipoDeleteById(EquipoId);
                CommonBC.EquipoModelo.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

    }
}
