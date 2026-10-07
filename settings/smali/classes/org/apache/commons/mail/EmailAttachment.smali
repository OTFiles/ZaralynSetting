.class public Lorg/apache/commons/mail/EmailAttachment;
.super Ljava/lang/Object;
.source "EmailAttachment.java"


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final INLINE:Ljava/lang/String; = "inline"


# instance fields
.field private description:Ljava/lang/String;

.field private disposition:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->name:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->description:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->path:Ljava/lang/String;

    .line 47
    const-string v0, "attachment"

    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->disposition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->url:Ljava/net/URL;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->description:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDisposition"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->disposition:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->name:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPath"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->path:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0
    .param p1, "aUrl"    # Ljava/net/URL;

    .line 149
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->url:Ljava/net/URL;

    .line 150
    return-void
.end method
