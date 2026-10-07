.class Lcom/sun/mail/pop3/Response;
.super Ljava/lang/Object;
.source "Protocol.java"


# instance fields
.field bytes:Ljava/io/InputStream;

.field data:Ljava/lang/String;

.field ok:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 52
    return-void
.end method
