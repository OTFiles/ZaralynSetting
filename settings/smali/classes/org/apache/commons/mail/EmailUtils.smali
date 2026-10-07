.class final Lorg/apache/commons/mail/EmailUtils;
.super Ljava/lang/Object;
.source "EmailUtils.java"


# static fields
.field private static final ESCAPE_CHAR:C = '%'

.field private static final RADIX:I = 0x10

.field private static final RANDOM:Ljava/util/Random;

.field private static final SAFE_URL:Ljava/util/BitSet;

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/mail/EmailUtils;->RANDOM:Ljava/util/Random;

    .line 71
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    .line 76
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 78
    sget-object v1, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0
    :cond_0
    const/16 v0, 0x41

    .restart local v0
    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 82
    sget-object v1, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v0
    :cond_1
    const/16 v0, 0x30

    .restart local v0
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 87
    sget-object v1, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    .end local v0
    :cond_2
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 97
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 98
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 102
    sget-object v0, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 293
    if-nez p0, :cond_0

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-byte v4, v1, v3

    .line 301
    .local v4, "c":B
    move v5, v4

    .line 302
    .local v5, "b":I
    if-gez v5, :cond_1

    .line 304
    const/16 v6, 0x100

    add-int/2addr v5, v6

    .line 306
    :cond_1
    sget-object v6, Lorg/apache/commons/mail/EmailUtils;->SAFE_URL:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    int-to-char v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :cond_2
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 314
    .local v6, "hex1":C
    and-int/lit8 v8, v5, 0xf

    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 315
    .local v7, "hex2":C
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 124
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 154
    if-eqz p0, :cond_0

    .line 158
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 4
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C
    .param p6, "random"    # Ljava/util/Random;

    .line 221
    if-nez p0, :cond_0

    .line 223
    const-string v0, ""

    return-object v0

    .line 225
    :cond_0
    if-ltz p0, :cond_9

    .line 230
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 232
    const/16 p2, 0x7b

    .line 233
    const/16 p1, 0x20

    .line 235
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 237
    const/4 p1, 0x0

    .line 238
    const p2, 0x7fffffff

    .line 242
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sub-int v1, p2, p1

    .line 245
    .local v1, "gap":I
    :goto_0
    add-int/lit8 v2, p0, -0x1

    .local v2, "count":I
    if-eqz p0, :cond_8

    .line 249
    .end local p0
    if-nez p5, :cond_2

    .line 251
    invoke-virtual {p6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    int-to-char p0, p0

    .local p0, "ch":C
    goto :goto_1

    .line 255
    .end local p0
    :cond_2
    invoke-virtual {p6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    aget-char p0, p5, p0

    .line 258
    .restart local p0
    :goto_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    if-eqz p4, :cond_5

    .line 259
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    if-nez p3, :cond_7

    if-nez p4, :cond_7

    .line 261
    :cond_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    .end local v2
    .local p0, "count":I
    :goto_2
    move p0, v2

    goto :goto_3

    .line 265
    .restart local v2
    .local p0, "ch":C
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .end local p0
    goto :goto_2

    .line 267
    .end local v2
    .local p0, "count":I
    :goto_3
    goto :goto_0

    .line 269
    .end local p0
    .restart local v2
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    .end local v0
    .end local v1
    .end local v2
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested random string length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is less than 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static randomAlphabetic(I)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I

    .line 175
    sget-object v6, Lorg/apache/commons/mail/EmailUtils;->RANDOM:Ljava/util/Random;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/mail/EmailUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static replaceEndOfLineCharactersWithSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 280
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd    # '\r'

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static writeMimeMessage(Ljava/io/File;Ljavax/mail/internet/MimeMessage;)V
    .locals 0
    .param p0, "resultFile"    # Ljava/io/File;
    .param p1, "mimeMessage"    # Ljavax/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 333
    invoke-static {p1, p0}, Lorg/apache/commons/mail/util/MimeMessageUtils;->writeMimeMessage(Ljavax/mail/internet/MimeMessage;Ljava/io/File;)V

    .line 334
    return-void
.end method
