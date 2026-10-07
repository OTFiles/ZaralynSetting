.class Lcom/sun/activation/registries/LineTokenizer;
.super Ljava/lang/Object;
.source "MimeTypeFile.java"


# static fields
.field private static final singles:Ljava/lang/String; = "="


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private stack:Ljava/util/Vector;

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 244
    iput-object p1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    .line 246
    return-void
.end method

.method private skipWhiteSpace()V
    .locals 2

    .line 252
    :goto_0
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    .line 252
    if-nez v0, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_0

    .line 256
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 266
    return v1

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    .line 268
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 8

    .line 279
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 280
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 283
    return-object v1

    .line 285
    .end local v1
    :cond_0
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    .line 287
    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_b

    .line 291
    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 292
    .local v1, "start":I
    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 293
    .local v2, "c":C
    const/16 v3, 0x22

    if-ne v2, v3, :cond_7

    .line 294
    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "filter":Z
    :cond_1
    :goto_0
    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v6, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-lt v5, v6, :cond_2

    .end local v4
    goto/16 :goto_4

    .line 297
    .restart local v4
    :cond_2
    iget-object v5, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v6, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 298
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_3

    .line 299
    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 300
    const/4 v4, 0x1

    goto :goto_0

    .line 301
    :cond_3
    if-ne v2, v3, :cond_1

    .line 304
    if-eqz v4, :cond_6

    .line 305
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v3, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_4

    .line 311
    .end local v6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    goto :goto_2

    .line 307
    .end local v5
    .restart local v6
    :cond_4
    iget-object v7, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 308
    if-eq v2, v5, :cond_5

    .line 309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 306
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 313
    .end local v3
    .end local v6
    :cond_6
    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5
    :goto_2
    move-object v3, v5

    .line 314
    .end local v5
    .local v3, "s":Ljava/lang/String;
    return-object v3

    .line 317
    .end local v3
    .end local v4
    :cond_7
    const-string v3, "="

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_8

    .line 318
    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_4

    .line 320
    :cond_8
    :goto_3
    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v3, v4, :cond_a

    .line 321
    const-string v3, "="

    iget-object v4, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_a

    .line 322
    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    .line 320
    if-eqz v3, :cond_9

    goto :goto_4

    .line 323
    :cond_9
    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_3

    .line 326
    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 288
    .end local v1
    .end local v2
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public pushToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 331
    return-void
.end method
