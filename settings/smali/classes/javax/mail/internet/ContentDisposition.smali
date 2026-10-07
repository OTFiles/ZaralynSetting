.class public Ljavax/mail/internet/ContentDisposition;
.super Ljava/lang/Object;
.source "ContentDisposition.java"


# instance fields
.field private disposition:Ljava/lang/String;

.field private list:Ljavax/mail/internet/ParameterList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 93
    .local v1, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 95
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "rem":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 100
    new-instance v3, Ljavax/mail/internet/ParameterList;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 101
    :cond_0
    return-void

    .line 94
    .end local v2
    :cond_1
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-direct {v2}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;
    .param p2, "list"    # Ljavax/mail/internet/ParameterList;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 76
    return-void
.end method


# virtual methods
.method public getDisposition()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterList()Ljavax/mail/internet/ParameterList;
    .locals 1

    .line 133
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    return-object v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 157
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setParameterList(Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "list"    # Ljavax/mail/internet/ParameterList;

    .line 166
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    return-object v0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
