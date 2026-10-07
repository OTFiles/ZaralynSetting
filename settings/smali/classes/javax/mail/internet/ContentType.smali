.class public Ljavax/mail/internet/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# instance fields
.field private list:Ljavax/mail/internet/ParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 95
    .local v1, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 97
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    int-to-char v2, v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_2

    .line 105
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 108
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "rem":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 113
    new-instance v3, Ljavax/mail/internet/ParameterList;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 114
    :cond_0
    return-void

    .line 107
    .end local v2
    :cond_1
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-direct {v2}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v2

    .line 102
    :cond_2
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-direct {v2}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v2

    .line 96
    :cond_3
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-direct {v2}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "list"    # Ljavax/mail/internet/ParameterList;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 79
    return-void
.end method


# virtual methods
.method public getBaseType()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterList()Ljavax/mail/internet/ParameterList;
    .locals 1

    .line 162
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    return-object v0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 279
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ContentType;->match(Ljavax/mail/internet/ContentType;)Z

    move-result v0

    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    const/4 v1, 0x0

    return v1
.end method

.method public match(Ljavax/mail/internet/ContentType;)Z
    .locals 5
    .param p1, "cType"    # Ljavax/mail/internet/ContentType;

    .line 245
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    return v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "sType":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    return v1

    .line 258
    :cond_2
    return v3

    .line 252
    :cond_3
    :goto_0
    return v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 192
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setParameterList(Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "list"    # Ljavax/mail/internet/ParameterList;

    .line 200
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 201
    return-void
.end method

.method public setPrimaryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 211
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    .end local v0
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
