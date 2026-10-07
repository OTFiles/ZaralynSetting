.class public Ljavax/mail/internet/NewsAddress;
.super Ljavax/mail/Address;
.source "NewsAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x3a56e35f1bcbec6fL


# instance fields
.field protected host:Ljava/lang/String;

.field protected newsgroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "newsgroup"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 83
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;
    .locals 4
    .param p0, "newsgroups"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 202
    .local v1, "nglist":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 207
    .local v2, "size":I
    new-array v3, v2, [Ljavax/mail/internet/NewsAddress;

    .line 208
    .local v3, "na":[Ljavax/mail/internet/NewsAddress;
    if-lez v2, :cond_0

    .line 209
    invoke-virtual {v1, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    :cond_0
    return-object v3

    .line 203
    .end local v2
    .end local v3
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "ng":Ljava/lang/String;
    new-instance v3, Ljavax/mail/internet/NewsAddress;

    invoke-direct {v3, v2}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .end local v2
    goto :goto_0
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 3
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .line 178
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    check-cast v1, Ljavax/mail/internet/NewsAddress;

    invoke-virtual {v1}, Ljavax/mail/internet/NewsAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    nop

    .line 183
    .local v0, "s":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 186
    .end local v1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    .restart local v1
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p0, v1

    check-cast v2, Ljavax/mail/internet/NewsAddress;

    invoke-virtual {v2}, Ljavax/mail/internet/NewsAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0
    .end local v1
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .line 144
    instance-of v0, p1, Ljavax/mail/internet/NewsAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 145
    return v1

    .line 147
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/NewsAddress;

    .line 148
    .local v0, "s":Ljavax/mail/internet/NewsAddress;
    iget-object v2, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    iget-object v3, v0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 150
    :cond_1
    iget-object v2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    iget-object v3, v0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_3
    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "news"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_1
    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setNewsgroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    return-object v0
.end method
