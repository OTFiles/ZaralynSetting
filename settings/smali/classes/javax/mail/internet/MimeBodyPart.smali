.class public Ljavax/mail/internet/MimeBodyPart;
.super Ljavax/mail/BodyPart;
.source "MimeBodyPart.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# static fields
.field static cacheMultipart:Z

.field private static decodeFileName:Z

.field private static encodeFileName:Z

.field private static setContentTypeFileName:Z

.field private static setDefaultTextCharset:Z


# instance fields
.field private cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected headers:Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    .line 87
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    .line 89
    const/4 v1, 0x0

    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    .line 90
    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    .line 94
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    .line 98
    :try_start_0
    const-string v2, "mail.mime.setdefaulttextcharset"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    .line 102
    const-string v3, "mail.mime.setcontenttypefilename"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 104
    if-eqz v2, :cond_1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    .line 106
    const-string v3, "mail.mime.encodefilename"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 108
    if-eqz v2, :cond_2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sput-boolean v3, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    .line 110
    const-string v3, "mail.mime.decodefilename"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 112
    if-eqz v2, :cond_3

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    sput-boolean v3, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    .line 114
    const-string v3, "mail.mime.cachemultipart"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 116
    if-eqz v2, :cond_4

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    nop

    :cond_4
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 117
    .end local v2
    :catch_0
    move-exception v0

    .line 81
    :goto_4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 163
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 182
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    .line 183
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 184
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 187
    :cond_0
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 189
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_1

    .line 190
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 191
    .local v0, "sis":Ljavax/mail/internet/SharedInputStream;
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    goto :goto_0

    .line 194
    .end local v0
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 200
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ioex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Error reading input stream"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .locals 0
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 214
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 215
    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 216
    return-void
.end method

.method static getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;
    .locals 7
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1203
    const-string v0, "Content-Language"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1206
    return-object v1

    .line 1209
    :cond_0
    new-instance v2, Ljavax/mail/internet/HeaderTokenizer;

    const-string v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v2, v0, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    .local v2, "h":Ljavax/mail/internet/HeaderTokenizer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1216
    .local v3, "v":Ljava/util/Vector;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v4

    .line 1217
    .local v4, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v4}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v5

    .line 1218
    .local v5, "tkType":I
    const/4 v6, -0x4

    if-ne v5, v6, :cond_3

    .line 1219
    nop

    .line 1215
    nop

    .line 1226
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1227
    return-object v1

    .line 1229
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1230
    .local v1, "language":[Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1231
    return-object v1

    .line 1220
    .end local v1
    :cond_3
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 1221
    invoke-virtual {v4}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1215
    .end local v4
    .end local v5
    goto :goto_0
.end method

.method static getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1111
    const-string v0, "Content-Description"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "rawvalue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1114
    return-object v1

    .line 1117
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1118
    :catch_0
    move-exception v1

    .line 1119
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v0
.end method

.method static getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1080
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1083
    return-object v1

    .line 1085
    :cond_0
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v1, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->getDisposition()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1243
    const-string v0, "Content-Transfer-Encoding"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1246
    return-object v1

    .line 1248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1251
    const-string v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "8bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1252
    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1253
    const-string v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1254
    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1258
    :cond_1
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer;

    const-string v2, "()<>@,;:\\\"\t []/?="

    invoke-direct {v1, v0, v2}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .local v1, "h":Ljavax/mail/internet/HeaderTokenizer;
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 1265
    .local v2, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    .line 1266
    .local v3, "tkType":I
    const/4 v4, -0x4

    if-ne v3, v4, :cond_3

    .line 1267
    nop

    .line 1273
    return-object v0

    .line 1268
    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1269
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1255
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    :goto_0
    return-object v0
.end method

.method static getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1140
    const/4 v0, 0x0

    .line 1141
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "Content-Disposition"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1145
    new-instance v3, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v3, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v3, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .end local v3
    :cond_0
    if-nez v0, :cond_1

    .line 1150
    const-string v3, "Content-Type"

    invoke-interface {p0, v3, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1151
    if-eqz v1, :cond_1

    .line 1153
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v2, "ct":Ljavax/mail/internet/ContentType;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 1155
    .end local v2
    :catch_0
    move-exception v2

    .line 1158
    :cond_1
    :goto_0
    sget-boolean v2, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1160
    :try_start_1
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_1

    .line 1161
    :catch_1
    move-exception v2

    .line 1162
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Can\'t decode filename"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1165
    .end local v2
    :cond_2
    :goto_1
    return-object v0
.end method

.method static invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1377
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1378
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1379
    return-void
.end method

.method static isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1059
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v1

    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1061
    .end local v0
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "ex":Ljavax/mail/internet/ParseException;
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1236
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 1239
    .end local v1
    const-string v1, "Content-Language"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    return-void

    .line 1238
    .restart local v1
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    const-string v0, "Content-Description"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1128
    return-void

    .line 1132
    :cond_0
    :try_start_0
    const-string v0, "Content-Description"

    const/16 v1, 0x15

    .line 1133
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1132
    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1091
    if-nez p1, :cond_0

    .line 1092
    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_0
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1101
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v1, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-virtual {v1, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1105
    .end local v1
    :cond_1
    const-string v1, "Content-Disposition"

    invoke-interface {p0, v1, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .end local v0
    :goto_0
    return-void
.end method

.method static setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 1
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1278
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method static setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1170
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1172
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t encode filename"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1179
    .end local v0
    :cond_0
    :goto_0
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "s":Ljava/lang/String;
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    if-nez v0, :cond_1

    const-string v3, "attachment"

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-direct {v2, v3}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1180
    nop

    .line 1182
    .local v2, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v3, "filename"

    invoke-virtual {v2, v3, p1}, Ljavax/mail/internet/ContentDisposition;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v3, "Content-Disposition"

    invoke-virtual {v2}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    sget-boolean v3, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v3, :cond_2

    .line 1190
    const-string v3, "Content-Type"

    invoke-interface {p0, v3, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_2

    .line 1193
    :try_start_1
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v3, "Content-Type"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1196
    .end local v1
    :catch_1
    move-exception v1

    .line 1199
    :cond_2
    :goto_2
    return-void
.end method

.method static setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1068
    if-nez p2, :cond_1

    .line 1069
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1070
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1072
    :cond_0
    const-string p2, "us-ascii"

    .line 1075
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-static {p2, v1}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-interface {p0, p1, v0}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method static updateHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 9
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1282
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    .line 1283
    .local v0, "dh":Ljavax/activation/DataHandler;
    if-nez v0, :cond_0

    .line 1284
    return-void

    .line 1287
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1289
    .local v2, "composite":Z
    const-string v3, "Content-Type"

    invoke-interface {p0, v3}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1291
    .local v3, "needCTHeader":Z
    :goto_0
    new-instance v4, Ljavax/mail/internet/ContentType;

    invoke-direct {v4, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v4, "cType":Ljavax/mail/internet/ContentType;
    const-string v5, "multipart/*"

    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1294
    const/4 v2, 0x1

    .line 1296
    instance-of v5, p0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v5, :cond_3

    .line 1297
    move-object v5, p0

    check-cast v5, Ljavax/mail/internet/MimeBodyPart;

    .line 1298
    .local v5, "mbp":Ljavax/mail/internet/MimeBodyPart;
    iget-object v6, v5, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 1299
    iget-object v6, v5, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v6

    .line 1298
    :goto_1
    nop

    .end local v5
    .local v6, "o":Ljava/lang/Object;
    :goto_2
    goto :goto_4

    .line 1300
    .end local v6
    :cond_3
    instance-of v5, p0, Ljavax/mail/internet/MimeMessage;

    if-eqz v5, :cond_5

    .line 1301
    move-object v5, p0

    check-cast v5, Ljavax/mail/internet/MimeMessage;

    .line 1302
    .local v5, "msg":Ljavax/mail/internet/MimeMessage;
    iget-object v6, v5, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 1303
    iget-object v6, v5, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v6

    .line 1302
    :goto_3
    goto :goto_2

    .line 1305
    .end local v5
    :cond_5
    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v6

    .restart local v6
    :goto_4
    move-object v5, v6

    .line 1306
    .end local v6
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Ljavax/mail/internet/MimeMultipart;

    if-eqz v6, :cond_6

    .line 1307
    move-object v6, v5

    check-cast v6, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v6}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    goto :goto_5

    .line 1309
    :cond_6
    new-instance v6, Ljavax/mail/MessagingException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MIME part of type \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" contains object of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " instead of MimeMultipart"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1309
    invoke-direct {v6, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1312
    .end local v5
    :cond_7
    const-string v5, "message/rfc822"

    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1313
    const/4 v2, 0x1

    .line 1319
    :cond_8
    :goto_5
    if-nez v2, :cond_b

    .line 1320
    const-string v5, "Content-Transfer-Encoding"

    invoke-interface {p0, v5}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1321
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1323
    :cond_9
    if-eqz v3, :cond_b

    sget-boolean v5, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    if-eqz v5, :cond_b

    .line 1324
    const-string v5, "text/*"

    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1325
    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    .line 1337
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1338
    .local v5, "enc":Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v6, "7bit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1339
    const-string v6, "us-ascii"

    .local v6, "charset":Ljava/lang/String;
    goto :goto_6

    .line 1341
    .end local v6
    :cond_a
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v6

    .line 1342
    .restart local v6
    :goto_6
    const-string v7, "charset"

    invoke-virtual {v4, v7, v6}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    invoke-virtual {v4}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1350
    .end local v5
    .end local v6
    :cond_b
    if-eqz v3, :cond_d

    .line 1357
    const-string v5, "Content-Disposition"

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1358
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 1360
    new-instance v6, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v6, v5}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v6, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1362
    .local v7, "filename":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 1363
    const-string v8, "name"

    invoke-virtual {v4, v8, v7}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v4}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 1368
    .end local v6
    .end local v7
    :cond_c
    const-string v6, "Content-Type"

    invoke-interface {p0, v6, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    return-void

    .line 1370
    :catch_0
    move-exception v1

    .line 1371
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException updating headers"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method static writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ignoreList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "los":Lcom/sun/mail/util/LineOutputStream;
    instance-of v1, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v1, :cond_0

    .line 1387
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/util/LineOutputStream;

    goto :goto_0

    .line 1389
    :cond_0
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 1393
    :goto_0
    invoke-interface {p0, p2}, Ljavax/mail/internet/MimePart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 1394
    .local v1, "hdrLines":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1398
    invoke-virtual {v0}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 1402
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 1403
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    .line 1404
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1405
    return-void

    .line 1395
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public attachFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 795
    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 796
    .local v0, "fds":Ljavax/activation/FileDataSource;
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 797
    invoke-virtual {v0}, Ljavax/activation/FileDataSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public attachFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;)V

    .line 815
    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    return-object v0

    .line 652
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, "c":Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 658
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_3

    .line 659
    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_3

    .line 660
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 661
    :cond_2
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 663
    :cond_3
    return-object v0

    .line 655
    .end local v0
    :catch_0
    move-exception v0

    .line 656
    .local v0, "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    .end local v0
    :catch_1
    move-exception v0

    .line 654
    .local v0, "fex":Lcom/sun/mail/util/FolderClosedIOException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 359
    const-string v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 415
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 390
    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    .line 589
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 591
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 279
    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 281
    const-string v0, "text/plain"

    .line 283
    :cond_0
    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 623
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 445
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 318
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 347
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 528
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 264
    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 959
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 968
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    array-length v0, v0

    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 239
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 242
    .local v0, "size":I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    .line 243
    return v0

    .line 244
    .end local v0
    :catch_0
    move-exception v0

    .line 248
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 301
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method public saveFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 830
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 831
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 832
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 834
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .local v4, "len":I
    if-gtz v3, :cond_1

    .line 839
    .end local v2
    .end local v4
    if-eqz v1, :cond_0

    .line 840
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 841
    :catch_0
    move-exception v2

    .line 843
    :cond_0
    :goto_1
    nop

    .line 844
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 845
    :catch_1
    move-exception v2

    .line 847
    :goto_2
    return-void

    .line 834
    .restart local v2
    .restart local v4
    :cond_1
    nop

    .line 835
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .end local v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 836
    .end local v2
    :catchall_0
    move-exception v2

    .line 839
    if-eqz v1, :cond_2

    .line 840
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 841
    :catch_2
    move-exception v3

    .line 843
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 844
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 845
    :catch_3
    move-exception v3

    .line 846
    :cond_3
    :goto_4
    throw v2
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 859
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 860
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->saveFile(Ljava/io/File;)V

    .line 861
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 703
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 704
    move-object v0, p1

    check-cast v0, Ljavax/mail/Multipart;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    goto :goto_0

    .line 706
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 708
    :goto_0
    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 778
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 779
    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    .line 780
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 375
    if-nez p1, :cond_0

    .line 376
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 426
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 402
    const-string v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 678
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 680
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V

    .line 681
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 505
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 332
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 553
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 746
    const-string v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 764
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method protected updateHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1030
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 1037
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1038
    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 1040
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 1041
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1043
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v1

    .line 1046
    :cond_0
    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    .line 1048
    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 874
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 875
    return-void
.end method
