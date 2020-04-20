#include <YYGML.h>
#include "gmlids.h"
extern YYVAR g_VAR_image_speed;
#ifndef __YYNODEFS
#else
#endif // __YYNODEFS

void gml_Object_o_beast_Other_7( CInstance* pSelf, CInstance* pOther )
{
YY_STACKTRACE_FUNC_ENTRY( "gml_Object_o_beast_Other_7", 0 );
YYRValue sbuiltin_image_speed;


YY_STACKTRACE_LINE(2);
Variable_GetValue_Direct( (YYObjectBase*) pSelf, g_VAR_image_speed.val, (int)ARRAY_INDEX_NO_INDEX, &sbuiltin_image_speed );
if((/* First usage */sbuiltin_image_speed == 0)) {

YY_STACKTRACE_LINE(2);

YY_STACKTRACE_LINE(2);
return;
}

YY_STACKTRACE_LINE(2);
sbuiltin_image_speed=0;
Variable_SetValue_Direct( (YYObjectBase*) pSelf, g_VAR_image_speed.val, (int)ARRAY_INDEX_NO_INDEX, &sbuiltin_image_speed );
}
