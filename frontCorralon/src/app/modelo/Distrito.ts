import { Departamento } from './Departamento';
export class Distrito {
  id: number;
  nombre: string;
  abreviatura: string;
  habilitado: number;
  idDepartamento: number;
  departamentoByFkdepartamentosid: Departamento;
}
