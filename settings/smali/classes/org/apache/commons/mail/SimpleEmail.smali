.class public Lorg/apache/commons/mail/SimpleEmail;
.super Lorg/apache/commons/mail/Email;
.source "SimpleEmail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;-><init>()V

    return-void
.end method


# virtual methods
.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "text/plain"

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/SimpleEmail;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
