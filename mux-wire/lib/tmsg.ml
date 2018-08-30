

type t = {
    path: string list;
    headers: (string * string) list;
    body: Cstruct.t 
  } 



let path_default = []
                     
let headers_default = []
                        
let body_default = Cstruct.empty


let make
      ?(path=path_default)
      ?(headers=headers_default)
      ?(body=body_default)
      () =

  {path; headers; body}



    


let add_headers t h =
  let headers = t.headers @ h in
  {t with headers}

let set_headers t h =
  {t with headers = h;}

(*
      
  let set_body t b =
    {t with body = b}


      
  let with_body t f =
    let body1 = f t.body in
    {t with body = body1}
 *)

    
let body t = t.body
let headers t = t.headers

let path t = t.path
               
               
               
