.class public Lcom/sun/mail/smtp/DigestMD5;
.super Ljava/lang/Object;
.source "DigestMD5.java"


# static fields
.field private static digits:[C


# instance fields
.field private clientResponse:Ljava/lang/String;

.field private debugout:Ljava/io/PrintStream;

.field private md5:Ljava/security/MessageDigest;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 214
    nop

    .line 215
    nop

    .line 213
    sput-object v0, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    .line 56
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
        0x61S    # 'a'
        0x62S    # 'b'
        0x63S    # 'c'
        0x64S    # 'd'
        0x65S    # 'e'
        0x66S    # 'f'
    .end array-data
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "debugout"    # Ljava/io/PrintStream;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "DEBUG DIGEST-MD5: Loaded"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 222
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 224
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 229
    .end local v1
    .end local v2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 225
    .restart local v1
    .restart local v2
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 226
    .local v3, "temp":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    sget-object v5, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 227
    .end local v2
    add-int/lit8 v2, v4, 0x1

    .restart local v2
    sget-object v5, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 224
    .end local v3
    .end local v4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private tokenize(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 9
    .param p1, "serverResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 177
    .local v0, "map":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 178
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 181
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/io/StreamTokenizer;

    .line 182
    new-instance v4, Ljava/io/InputStreamReader;

    .line 183
    new-instance v5, Lcom/sun/mail/util/BASE64DecoderStream;

    .line 184
    new-instance v6, Ljava/io/ByteArrayInputStream;

    array-length v7, v1

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    invoke-direct {v6, v1, v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 183
    invoke-direct {v5, v6}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 181
    invoke-direct {v3, v4}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 180
    nop

    .line 187
    .local v3, "tokens":Ljava/io/StreamTokenizer;
    const/16 v4, 0x39

    const/16 v5, 0x30

    invoke-virtual {v3, v5, v4}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 188
    invoke-virtual {v3, v5, v4}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 189
    :goto_0
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    move v5, v4

    .local v5, "ttype":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 210
    return-object v0

    .line 189
    :cond_0
    nop

    .line 190
    const/4 v4, -0x3

    if-eq v5, v4, :cond_1

    const/16 v4, 0x22

    if-eq v5, v4, :cond_2

    .end local v5
    goto :goto_0

    .line 192
    .restart local v5
    :cond_1
    if-nez v2, :cond_2

    .line 193
    iget-object v2, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 194
    goto :goto_0

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v4, :cond_3

    .line 199
    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG DIGEST-MD5: Received => "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    :cond_4
    iget-object v4, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_1
    const/4 v2, 0x0

    .end local v5
    goto :goto_0
.end method


# virtual methods
.method public authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 18
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "serverChallenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 78
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    const v3, 0x7fffffff

    invoke-direct {v0, v2, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v3, v0

    .line 82
    .local v3, "b64os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 83
    .local v0, "random":Ljava/security/SecureRandom;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    .line 87
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 89
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v4, "result":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "smtp/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    .line 92
    const-string v5, "00000001"

    .line 93
    .local v5, "nc":Ljava/lang/String;
    const-string v7, "auth"

    .line 94
    .local v7, "qop":Ljava/lang/String;
    const/16 v8, 0x20

    new-array v8, v8, [B

    .line 97
    .local v8, "bytes":[B
    iget-object v9, v1, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v9, :cond_0

    .line 98
    iget-object v9, v1, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    const-string v10, "DEBUG DIGEST-MD5: Begin authentication ..."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :cond_0
    move-object/from16 v9, p5

    invoke-direct {v1, v9}, Lcom/sun/mail/smtp/DigestMD5;->tokenize(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v10

    .line 103
    .local v10, "map":Ljava/util/Hashtable;
    if-nez p4, :cond_2

    .line 104
    const-string v12, "realm"

    invoke-virtual {v10, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 105
    .local v12, "text":Ljava/lang/String;
    if-eqz v12, :cond_1

    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, ","

    invoke-direct {v13, v12, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 106
    :cond_1
    nop

    .line 105
    move-object v13, v6

    :goto_0
    move-object v11, v13

    .end local v12
    .end local p4
    .local v11, "realm":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v11
    .restart local p4
    :cond_2
    move-object/from16 v11, p4

    .end local p4
    .restart local v11
    :goto_1
    const-string v12, "nonce"

    invoke-virtual {v10, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 112
    .local v12, "nonce":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 113
    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "cnonce":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 121
    iget-object v14, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    .line 122
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0
    .local v16, "random":Ljava/security/SecureRandom;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 121
    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    invoke-static {v14}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iput-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    .line 128
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "AUTHENTICATE:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 129
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "username=\""

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",realm=\""

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",qop="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",nc="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",nonce=\""

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",cnonce=\""

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",digest-uri=\""

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, ",response="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v5

    const-string v5, "DEBUG DIGEST-MD5: Response => "

    .end local v5
    .local v17, "nc":Ljava/lang/String;
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 144
    .end local v17
    .restart local v5
    :cond_3
    move-object/from16 v17, v5

    .end local v5
    .restart local v17
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 145
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 146
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 84
    .end local v4
    .end local v7
    .end local v8
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v16
    .end local v17
    .restart local p4
    :catch_0
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p5

    .line 85
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    iget-object v4, v1, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v4, :cond_4

    .line 86
    iget-object v4, v1, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG DIGEST-MD5: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_4
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public authServer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "serverResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/DigestMD5;->tokenize(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 158
    .local v0, "map":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 159
    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "text":Ljava/lang/String;
    const-string v2, "rspauth"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG DIGEST-MD5: Expected => rspauth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 167
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
