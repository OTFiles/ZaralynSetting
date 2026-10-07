.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 80
    invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private static isTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 278
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, "needsQuotes":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 300
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v0, :cond_0

    .end local v2
    goto :goto_1

    .line 301
    .restart local v2
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v2
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 305
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v2, "buffer":Ljava/lang/StringBuffer;
    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 309
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v1, :cond_2

    .line 320
    .end local v4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 313
    .restart local v4
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 314
    .local v5, "c":C
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    if-ne v5, v3, :cond_4

    .line 315
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    .end local v5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 324
    .end local v2
    .end local v4
    :cond_5
    return-object p0
.end method

.method private static skipWhiteSpace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "rawdata"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 287
    .local v0, "length":I
    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    :goto_1
    return p1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 334
    .local v0, "valueLength":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "escaped":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 350
    .end local v3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 339
    .restart local v3
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 340
    .local v4, "currentChar":C
    if-nez v2, :cond_1

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    .line 341
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 342
    :cond_1
    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    const/4 v2, 0x0

    goto :goto_1

    .line 346
    :cond_2
    const/4 v2, 0x1

    .line 338
    .end local v4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 1

    .line 249
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 209
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 8
    .param p1, "parameterList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 89
    if-nez p1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 93
    .local v0, "length":I
    if-gtz v0, :cond_1

    .line 94
    return-void

    .line 98
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "c":C
    const/16 v4, 0x3b

    if-eq v2, v4, :cond_2

    .end local v3
    goto/16 :goto_8

    .line 106
    .restart local v3
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 111
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 114
    if-lt v1, v0, :cond_3

    .line 115
    return-void

    .line 118
    :cond_3
    move v2, v1

    .line 119
    .local v2, "lastIndex":I
    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 120
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_5
    :goto_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 123
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 122
    nop

    .line 126
    .local v4, "name":Ljava/lang/String;
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 128
    if-ge v1, v0, :cond_10

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_10

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 137
    if-ge v1, v0, :cond_f

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 143
    const/16 v5, 0x22

    if-ne v3, v5, :cond_b

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    if-ge v1, v0, :cond_a

    .line 150
    move v6, v1

    .line 153
    .end local v2
    .local v6, "lastIndex":I
    :goto_3
    if-lt v1, v0, :cond_6

    goto :goto_4

    .line 154
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 155
    if-ne v3, v5, :cond_8

    .line 156
    nop

    .line 165
    :goto_4
    if-ne v3, v5, :cond_7

    .line 169
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 166
    .end local v2
    :cond_7
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    .line 167
    nop

    .line 166
    const-string v5, "Encountered unterminated quoted parameter value."

    invoke-direct {v2, v5}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_8
    const/16 v2, 0x5c

    if-ne v3, v2, :cond_9

    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 147
    .end local v6
    .local v2, "lastIndex":I
    :cond_a
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    .line 148
    nop

    .line 147
    const-string v6, "Encountered unterminated quoted parameter value."

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_b
    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 175
    move v6, v1

    .line 176
    .end local v2
    .restart local v6
    :goto_5
    if-ge v1, v0, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_6

    .line 177
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 178
    :cond_d
    :goto_6
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "value":Ljava/lang/String;
    :goto_7
    nop

    .line 186
    iget-object v5, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v2
    .end local v4
    .end local v6
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .end local v3
    goto/16 :goto_0

    .line 181
    .local v2, "lastIndex":I
    .restart local v3
    .restart local v4
    :cond_e
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected character encountered at index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_f
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t find a value for parameter named "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_10
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    .line 130
    nop

    .line 129
    const-string v6, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v2
    .end local v3
    .end local v4
    :cond_11
    :goto_8
    if-lt v1, v0, :cond_12

    .line 192
    return-void

    .line 189
    :cond_12
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    .line 190
    nop

    .line 189
    const-string v3, "More characters encountered in input than expected."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public size()I
    .locals 1

    .line 200
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 260
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 261
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 262
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    .local v2, "key":Ljava/lang/String;
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v2
    goto :goto_0
.end method
