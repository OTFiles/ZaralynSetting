.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/ParameterList$MultiValue;,
        Ljavax/mail/internet/ParameterList$ParamEnum;,
        Ljavax/mail/internet/ParameterList$ToStringBuffer;,
        Ljavax/mail/internet/ParameterList$Value;
    }
.end annotation


# static fields
.field private static applehack:Z

.field private static decodeParameters:Z

.field private static decodeParametersStrict:Z

.field private static encodeParameters:Z

.field private static final hex:[C


# instance fields
.field private lastName:Ljava/lang/String;

.field private list:Ljava/util/Map;

.field private multisegmentNames:Ljava/util/Set;

.field private slist:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 130
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 131
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 132
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->applehack:Z

    .line 136
    :try_start_0
    const-string v1, "mail.mime.encodeparameters"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 139
    const-string v3, "mail.mime.decodeparameters"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 141
    if-eqz v1, :cond_1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 142
    const-string v3, "mail.mime.decodeparameters.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 144
    if-eqz v1, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 145
    const-string v3, "mail.mime.applefilenames"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 147
    if-eqz v1, :cond_3

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    nop

    :cond_3
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->applehack:Z

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 148
    .end local v1
    :catch_0
    move-exception v0

    .line 653
    :goto_3
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 654
    nop

    .line 655
    nop

    .line 653
    sput-object v0, Ljavax/mail/internet/ParameterList;->hex:[C

    .line 66
    return-void

    :array_0
    .array-data 2
        0x30S    # '0'
        0x31S    # '1'
        0x32S    # '2'
        0x33S    # '3'
        0x34S    # '4'
        0x35S    # '5'
        0x36S    # '6'
        0x37S    # '7'
        0x38S    # '8'
        0x39S    # '9'
        0x41S    # 'A'
        0x42S    # 'B'
        0x43S    # 'C'
        0x44S    # 'D'
        0x45S    # 'E'
        0x46S    # 'F'
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 204
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    .line 208
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 223
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 226
    .local v1, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 229
    .local v2, "type":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    .line 230
    goto :goto_1

    .line 232
    :cond_0
    int-to-char v4, v2

    const/16 v5, 0x3b

    const/4 v6, -0x1

    if-ne v4, v5, :cond_8

    .line 234
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 237
    nop

    .line 287
    .end local v1
    .end local v2
    :goto_1
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v1, :cond_1

    .line 292
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V

    .line 294
    :cond_1
    return-void

    .line 239
    .restart local v1
    .restart local v2
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 242
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    int-to-char v4, v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_6

    .line 251
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 254
    if-eq v2, v6, :cond_4

    .line 255
    const/4 v4, -0x2

    if-ne v2, v4, :cond_3

    goto :goto_2

    .line 256
    :cond_3
    new-instance v4, Ljavax/mail/internet/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expected parameter value, got \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "value":Ljava/lang/String;
    iput-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 261
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v5, :cond_5

    .line 262
    invoke-direct {p0, v3, v4}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 247
    .end local v4
    :cond_6
    new-instance v4, Ljavax/mail/internet/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expected \'=\', got \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    .end local v3
    :cond_7
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected parameter name, got \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_8
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->applehack:Z

    if-eqz v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 273
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 274
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 275
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 277
    :cond_9
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "lastValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .restart local v4
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 281
    .end local v3
    .end local v4
    :cond_a
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected \';\', got \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 649
    invoke-static {p0}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private combineMultisegmentNames(Z)V
    .locals 16
    .param p1, "keepConsistentOnFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 346
    const/4 v2, 0x0

    move v3, v2

    .line 348
    .local v3, "success":Z
    :try_start_0
    iget-object v0, v1, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v0

    .line 349
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 411
    const/4 v0, 0x1

    .line 418
    .end local v3
    .end local v4
    .local v0, "success":Z
    if-nez p1, :cond_0

    if-eqz v0, :cond_4

    .line 421
    :cond_0
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 423
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 424
    .local v2, "sit":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 433
    iget-object v3, v1, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v4, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .end local v2
    goto :goto_2

    .line 425
    .restart local v2
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 426
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v4, :cond_1

    .line 427
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    .line 428
    .local v4, "vv":Ljavax/mail/internet/ParameterList$Value;
    iget-object v5, v4, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v5

    .line 429
    .local v5, "vnew":Ljavax/mail/internet/ParameterList$Value;
    iget-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    iput-object v6, v4, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 430
    iget-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iput-object v6, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .end local v3
    .end local v4
    .end local v5
    goto :goto_1

    .line 437
    .end local v2
    :cond_3
    :goto_2
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 438
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 441
    :cond_4
    return-void

    .line 350
    .end local v0
    .local v3, "success":Z
    .local v4, "it":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 351
    .local v5, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v6, v0

    .line 352
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljavax/mail/internet/ParameterList$MultiValue;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>(Ljavax/mail/internet/ParameterList$MultiValue;)V

    move-object v7, v0

    .line 357
    .local v7, "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    const/4 v0, 0x0

    .line 359
    .local v0, "charset":Ljava/lang/String;
    move-object v8, v0

    move v0, v2

    .local v0, "segment":I
    .local v8, "charset":Ljava/lang/String;
    :goto_3
    move v9, v0

    .line 360
    .end local v0
    .local v9, "segment":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 361
    .local v10, "sname":Ljava/lang/String;
    iget-object v0, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    .line 362
    .local v11, "v":Ljava/lang/Object;
    if-nez v11, :cond_6

    .line 363
    goto :goto_4

    .line 364
    :cond_6
    invoke-virtual {v7, v11}, Ljavax/mail/internet/ParameterList$MultiValue;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v12, 0x0

    .line 366
    .local v12, "value":Ljava/lang/String;
    instance-of v0, v11, Ljavax/mail/internet/ParameterList$Value;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_d

    .line 368
    :try_start_2
    move-object v0, v11

    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    .line 369
    .local v0, "vv":Ljavax/mail/internet/ParameterList$Value;
    iget-object v13, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 370
    .local v13, "evalue":Ljava/lang/String;
    move-object v12, v13

    .line 371
    if-nez v9, :cond_7

    .line 374
    invoke-static {v13}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v14

    .line 375
    .local v14, "vnew":Ljavax/mail/internet/ParameterList$Value;
    iget-object v2, v14, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    iput-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object v8, v2

    .line 376
    iget-object v2, v14, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iput-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    goto :goto_6

    .line 378
    .end local v14
    :cond_7
    if-nez v8, :cond_9

    .line 380
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 381
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    .line 403
    .end local v0
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :goto_4
    if-nez v9, :cond_8

    .line 405
    :try_start_3
    iget-object v0, v1, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 407
    .restart local v5
    .restart local v6
    .restart local v7
    .restart local v8
    .restart local v9
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .line 408
    iget-object v0, v1, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 383
    .restart local v0
    .restart local v5
    .restart local v6
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    :cond_9
    :try_start_4
    invoke-static {v13, v8}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 391
    .end local v0
    .end local v13
    :catch_0
    move-exception v0

    move-object v2, v12

    .line 392
    .end local v12
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .local v2, "value":Ljava/lang/String;
    :try_start_5
    sget-boolean v12, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v12, :cond_a

    .end local v0
    goto :goto_6

    .line 393
    .restart local v0
    :cond_a
    new-instance v12, Ljavax/mail/internet/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 388
    .end local v0
    .end local v2
    .restart local v12
    :catch_1
    move-exception v0

    move-object v2, v12

    .line 389
    .end local v12
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v2
    sget-boolean v12, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v12, :cond_b

    .end local v0
    goto :goto_6

    .line 390
    .restart local v0
    :cond_b
    new-instance v12, Ljavax/mail/internet/ParseException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 385
    .end local v0
    .end local v2
    .restart local v12
    :catch_2
    move-exception v0

    move-object v2, v12

    .line 386
    .end local v12
    .local v0, "nex":Ljava/lang/NumberFormatException;
    .restart local v2
    sget-boolean v12, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v12, :cond_c

    .end local v0
    goto :goto_6

    .line 387
    .restart local v0
    :cond_c
    new-instance v12, Ljavax/mail/internet/ParseException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 398
    .end local v0
    .end local v2
    .restart local v12
    :cond_d
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 400
    .end local v12
    .restart local v2
    :goto_6
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    iget-object v0, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v2
    .end local v10
    .end local v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v0, v9, 0x1

    .end local v9
    .local v0, "segment":I
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 412
    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :catchall_0
    move-exception v0

    .line 418
    if-nez p1, :cond_e

    if-eqz v3, :cond_12

    .line 421
    :cond_e
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 423
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 424
    .local v2, "sit":Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 426
    .local v4, "v":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v5, :cond_f

    .line 427
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/ParameterList$Value;

    .line 428
    .local v5, "vv":Ljavax/mail/internet/ParameterList$Value;
    iget-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    invoke-static {v6}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v6

    .line 429
    .local v6, "vnew":Ljavax/mail/internet/ParameterList$Value;
    iget-object v7, v6, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    iput-object v7, v5, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 430
    iget-object v7, v6, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iput-object v7, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .end local v4
    .end local v5
    .end local v6
    goto :goto_7

    .line 433
    :cond_10
    iget-object v4, v1, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v5, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 437
    .end local v2
    :cond_11
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 438
    iget-object v2, v1, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 440
    :cond_12
    throw v0
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 747
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "bi":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 756
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v3

    .line 748
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 749
    .local v3, "c":C
    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    .line 750
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 751
    .local v4, "hex":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v3, v5

    .line 752
    add-int/lit8 v1, v1, 0x2

    .line 754
    .end local v4
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .local v4, "bi":I
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 747
    .end local v2
    .end local v3
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0
.end method

.method private static decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 696
    new-instance v0, Ljavax/mail/internet/ParameterList$Value;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 697
    .local v0, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 698
    iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 700
    const/16 v1, 0x27

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 701
    .local v2, "i":I
    if-gtz v2, :cond_1

    .line 702
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v1, :cond_0

    .line 705
    return-object v0

    .line 703
    :cond_0
    new-instance v1, Ljavax/mail/internet/ParseException;

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing charset in encoded value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "charset":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 709
    .local v1, "li":I
    if-gez v1, :cond_3

    .line 710
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v4, :cond_2

    .line 713
    return-object v0

    .line 711
    :cond_2
    new-instance v4, Ljavax/mail/internet/ParseException;

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Missing language in encoded value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 711
    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 715
    :cond_3
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, "lang":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object p0, v5

    .line 717
    iput-object v3, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 718
    invoke-static {p0, v3}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :catch_0
    move-exception v1

    .line 726
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_4

    .end local v1
    goto :goto_0

    .line 727
    .restart local v1
    :cond_4
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    .end local v1
    :catch_1
    move-exception v1

    .line 723
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_5

    .end local v1
    goto :goto_0

    .line 724
    .restart local v1
    :cond_5
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    .end local v1
    :catch_2
    move-exception v1

    .line 720
    .local v1, "nex":Ljava/lang/NumberFormatException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_6

    .line 729
    .end local v1
    :goto_0
    return-object v0

    .line 721
    .restart local v1
    :cond_6
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 665
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 666
    return-object v2

    .line 670
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 672
    .local v0, "b":[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 674
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 675
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    .line 685
    .end local v3
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    move-object v2, v3

    .line 686
    .local v2, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p1, v2, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 687
    iput-object p0, v2, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 689
    return-object v2

    .line 677
    .end local v2
    .restart local v3
    :cond_1
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 679
    .local v4, "c":C
    const/16 v5, 0x20

    const/16 v6, 0x25

    if-le v4, v5, :cond_3

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    if-eq v4, v6, :cond_3

    .line 680
    const-string v5, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local v4
    goto :goto_2

    .line 681
    .restart local v4
    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ljavax/mail/internet/ParameterList;->hex:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 676
    .end local v4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    .end local v0
    .end local v1
    .end local v3
    :catch_0
    move-exception v0

    .line 672
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v2
.end method

.method private putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 308
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 309
    .local v0, "star":I
    if-gez v0, :cond_0

    .line 311
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 314
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "rname":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 326
    .local v3, "v":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 327
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 331
    .end local v3
    :cond_2
    move-object v3, p2

    .restart local v3
    :goto_0
    move-object v2, v3

    .line 333
    .end local v3
    .local v2, "v":Ljava/lang/Object;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v1
    .end local v2
    :goto_1
    return-void
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 650
    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 463
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v1, :cond_0

    .line 465
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$MultiValue;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 466
    .end local v1
    :cond_0
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v1, :cond_1

    .line 467
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$Value;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    goto :goto_0

    .line 469
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 470
    .restart local v1
    :goto_1
    return-object v1
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 2

    .line 552
    new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 483
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "DONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V

    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 500
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_2

    .line 502
    :try_start_1
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 503
    :catch_1
    move-exception v0

    .line 505
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0
    goto :goto_1

    .line 508
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :goto_1
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .line 524
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v0, :cond_1

    .line 525
    invoke-static {p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v0

    .line 527
    .local v0, "ev":Ljavax/mail/internet/ParameterList$Value;
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v0
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 449
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 10
    .param p1, "used"    # I

    .line 580
    new-instance v0, Ljavax/mail/internet/ParameterList$ToStringBuffer;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;-><init>(I)V

    .line 581
    .local v0, "sb":Ljavax/mail/internet/ParameterList$ToStringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 583
    .local v1, "e":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 584
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 586
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v4, :cond_3

    .line 587
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$MultiValue;

    .line 588
    .local v4, "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "ns":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v4}, Ljavax/mail/internet/ParameterList$MultiValue;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .end local v6
    goto :goto_0

    .line 590
    .restart local v6
    :cond_1
    invoke-virtual {v4, v6}, Ljavax/mail/internet/ParameterList$MultiValue;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 591
    .local v7, "va":Ljava/lang/Object;
    instance-of v8, v7, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v8, :cond_2

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Ljavax/mail/internet/ParameterList$Value;

    iget-object v9, v9, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 594
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .end local v7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 596
    .end local v4
    .end local v5
    .end local v6
    :cond_3
    instance-of v4, v3, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v4, :cond_4

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljavax/mail/internet/ParameterList$Value;

    iget-object v5, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2
    .end local v3
    goto/16 :goto_0
.end method
