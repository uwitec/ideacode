﻿using System;
using System.Collections.Generic;
using System.Text;

namespace LiveSupport.BLL.Exceptions
{
    [global::System.Serializable]
    public class DuplicateAccountException : Exception
    {
        //
        // For guidelines regarding the creation of new exception types, see
        //    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpgenref/html/cpconerrorraisinghandlingguidelines.asp
        // and
        //    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dncscol/html/csharp07192001.asp
        //

        public DuplicateAccountException() { }
        public DuplicateAccountException(string message) : base(message) { }
        public DuplicateAccountException(string message, Exception inner) : base(message, inner) { }
        protected DuplicateAccountException(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context)
            : base(info, context) { }
    }
}
