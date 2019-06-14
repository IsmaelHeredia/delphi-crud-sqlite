// Written By Ismael Heredia in the year 2016

unit Conexion;

interface

uses Windows, SysUtils, ZAbstractConnection, ZConnection,
  ZAbstractTable, ZDataset, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  Classes, Producto, Proveedor, Usuario;

type
  TConexion = class
  private
  public
    conexion_now: TZConnection;
    c: string;
    Constructor Create; overload;
    function Conectar(): boolean;
    function Desconectar(): boolean;
  end;

implementation

constructor TConexion.Create;
begin
  inherited;
  conexion_now := TZConnection.Create(nil);
  c := '''';
end;

function TConexion.Conectar(): boolean;
begin
  try
    begin
      conexion_now.Protocol := 'sqlite-3';
      conexion_now.Database := 'sistema.s3db';
      conexion_now.Connect;
      Result := true;
    end;
  except
    begin
      Result := false;
    end;
  end;
end;

function TConexion.Desconectar(): boolean;
begin
  try
    begin
      conexion_now.Connected := false;
      Result := true;
    end;
  except
    begin
      Result := false;
    end;
  end;
end;

end.
