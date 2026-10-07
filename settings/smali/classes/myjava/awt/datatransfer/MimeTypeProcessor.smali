.class final Lmyjava/awt/datatransfer/MimeTypeProcessor;
.super Ljava/lang/Object;
.source "MimeTypeProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;,
        Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;
    }
.end annotation


# static fields
.field private static instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    .end local v1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    .restart local v1
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "name":Ljava/lang/String;
    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    .local v3, "value":Ljava/lang/String;
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v2
    .end local v3
    goto :goto_0
.end method

.method private static getNextMeaningfulIndex(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 158
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isMeaningfulChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    :goto_1
    return p1
.end method

.method private static isMeaningfulChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 172
    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isTSpecialChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 166
    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    .line 167
    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    .line 168
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 166
    return v0
.end method

.method static parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 35
    sget-object v0, Lmyjava/awt/datatransfer/MimeTypeProcessor;->instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;-><init>()V

    sput-object v0, Lmyjava/awt/datatransfer/MimeTypeProcessor;->instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;

    .line 39
    :cond_0
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>()V

    .line 40
    .local v0, "res":Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    if-eqz p0, :cond_1

    .line 41
    new-instance v1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;-><init>(Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    .line 43
    .local v1, "pos":Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;
    invoke-static {p0, v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveType(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    .line 44
    invoke-static {p0, v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveParams(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    .line 47
    .end local v1
    :cond_1
    return-object v0
.end method

.method private static retrieveParam(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "res"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .param p2, "pos"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    .line 95
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "name":Ljava/lang/String;
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 98
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2

    .line 101
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 102
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 103
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 109
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveQuoted(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v1
    :cond_0
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1
    :goto_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void

    .line 104
    .end local v1
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static retrieveParams(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "res"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .param p2, "pos"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$3(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$4(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V

    .line 82
    :goto_0
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 83
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 89
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 90
    invoke-static {p0, p1, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveParam(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    .line 91
    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static retrieveQuoted(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 120
    .local v1, "check":Z
    iget v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 121
    :goto_0
    iget v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 136
    iget v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    :cond_0
    iget v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 124
    .local v2, "c":C
    if-nez v1, :cond_1

    .line 125
    const/4 v1, 0x1

    goto :goto_1

    .line 126
    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 127
    const/4 v1, 0x0

    .line 129
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_3
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    .end local v2
    goto :goto_0

    .line 133
    .restart local v2
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method private static retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 145
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isTSpecialChar(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    :cond_0
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 151
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isMeaningfulChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isTSpecialChar(C)Z

    move-result v1

    .line 148
    if-eqz v1, :cond_0

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static retrieveType(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "res"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .param p2, "pos"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    .line 69
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$1(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V

    .line 70
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 71
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 74
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 75
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$2(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V

    .line 76
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
