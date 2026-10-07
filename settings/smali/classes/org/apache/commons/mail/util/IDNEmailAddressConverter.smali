.class public Lorg/apache/commons/mail/util/IDNEmailAddressConverter;
.super Ljava/lang/Object;
.source "IDNEmailAddressConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findAtSymbolIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 114
    if-nez p1, :cond_0

    .line 116
    const/4 v0, -0x1

    return v0

    .line 119
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method private getDomainPart(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .line 103
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalPart(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->findAtSymbolIndex(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 47
    return-object p1

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->getLocalPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->getDomainPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->findAtSymbolIndex(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 76
    return-object p1

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->getLocalPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->getDomainPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toUnicode(Ljavax/mail/internet/InternetAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # Ljavax/mail/internet/InternetAddress;

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
