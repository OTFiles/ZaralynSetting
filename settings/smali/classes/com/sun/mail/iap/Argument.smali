.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    .line 60
    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 194
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 195
    .local v0, "os":Ljava/io/DataOutputStream;
    array-length v1, p1

    .line 198
    .local v1, "len":I
    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 200
    return-void

    .line 204
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 205
    .local v2, "quote":Z
    :goto_0
    const/4 v3, 0x0

    .line 208
    .local v3, "escape":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0x5c

    const/16 v6, 0x22

    if-lt v4, v1, :cond_8

    .line 223
    .end local v4
    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 226
    :cond_2
    if-eqz v3, :cond_6

    .line 228
    const/4 v4, 0x0

    .restart local v4
    :goto_2
    if-lt v4, v1, :cond_3

    .end local v4
    goto :goto_3

    .line 229
    .restart local v4
    :cond_3
    aget-byte v7, p1, v4

    .line 230
    .local v7, "b":B
    if-eq v7, v6, :cond_4

    if-ne v7, v5, :cond_5

    .line 231
    :cond_4
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 232
    :cond_5
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 228
    add-int/lit8 v4, v4, 0x1

    .end local v7
    goto :goto_2

    .line 235
    .end local v4
    :cond_6
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 238
    :goto_3
    if-eqz v2, :cond_7

    .line 239
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 240
    :cond_7
    return-void

    .line 209
    .restart local v4
    :cond_8
    aget-byte v7, p1, v4

    .line 210
    .restart local v7
    if-eqz v7, :cond_d

    const/16 v8, 0xd

    if-eq v7, v8, :cond_d

    const/16 v8, 0xa

    if-eq v7, v8, :cond_d

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0x7f

    if-le v8, v9, :cond_9

    goto :goto_4

    .line 215
    :cond_9
    const/16 v8, 0x2a

    if-eq v7, v8, :cond_a

    const/16 v8, 0x25

    if-eq v7, v8, :cond_a

    const/16 v8, 0x28

    if-eq v7, v8, :cond_a

    const/16 v8, 0x29

    if-eq v7, v8, :cond_a

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_a

    .line 216
    if-eq v7, v6, :cond_a

    if-eq v7, v5, :cond_a

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0x20

    if-gt v8, v9, :cond_c

    .line 217
    :cond_a
    const/4 v2, 0x1

    .line 218
    if-eq v7, v6, :cond_b

    if-ne v7, v5, :cond_c

    .line 219
    :cond_b
    const/4 v3, 0x1

    .line 208
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .end local v7
    goto :goto_1

    .line 212
    .restart local v7
    :cond_d
    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 213
    return-void
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 263
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    .line 264
    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 256
    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 247
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 248
    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 269
    .local v0, "os":Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v1

    .line 271
    .local v1, "nonSync":Z
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 273
    if-eqz v1, :cond_0

    .line 274
    const-string v2, "+}\r\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    if-nez v1, :cond_3

    .line 283
    :goto_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 284
    .local v2, "r":Lcom/sun/mail/iap/Response;
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    goto :goto_2

    .line 286
    :cond_1
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-nez v3, :cond_2

    .end local v2
    goto :goto_1

    .line 287
    .restart local v2
    :cond_2
    new-instance v3, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {v3, v2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v3

    .line 292
    .end local v2
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)V
    .locals 3
    .param p1, "arg"    # Lcom/sun/mail/iap/Argument;

    .line 68
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 71
    .end local v0
    return-void

    .line 70
    .restart local v0
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .locals 5
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    .local v0, "size":I
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 164
    .local v1, "os":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 187
    .end local v2
    return-void

    .line 165
    .restart local v2
    :cond_1
    if-lez v2, :cond_2

    .line 166
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 168
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 169
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_3

    .line 170
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/Atom;

    iget-object v4, v4, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_3
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 172
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :cond_4
    instance-of v4, v3, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_5

    .line 174
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/AString;

    iget-object v4, v4, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 175
    :cond_5
    instance-of v4, v3, [B

    if-eqz v4, :cond_6

    .line 176
    move-object v4, v3

    check-cast v4, [B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 177
    :cond_6
    instance-of v4, v3, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_7

    .line 178
    move-object v4, v3

    check-cast v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 179
    :cond_7
    instance-of v4, v3, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_8

    .line 180
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/Literal;

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 181
    :cond_8
    instance-of v4, v3, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_9

    .line 182
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 183
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/Argument;

    invoke-virtual {v4, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 184
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 164
    .end local v3
    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
    .locals 1
    .param p1, "c"    # Lcom/sun/mail/iap/Argument;

    .line 153
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public writeAtom(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;

    .line 119
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;

    .line 111
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public writeBytes([B)V
    .locals 1
    .param p1, "b"    # [B

    .line 103
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I

    .line 137
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public writeNumber(J)V
    .locals 2
    .param p1, "i"    # J

    .line 145
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void
.end method
