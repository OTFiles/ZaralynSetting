.class public abstract Ljavax/mail/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field private requestingPort:I

.field private requestingPrompt:Ljava/lang/String;

.field private requestingProtocol:Ljava/lang/String;

.field private requestingSite:Ljava/net/InetAddress;

.field private requestingUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 86
    const/4 v1, -0x1

    iput v1, p0, Ljavax/mail/Authenticator;->requestingPort:I

    .line 87
    iput-object v0, p0, Ljavax/mail/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Ljavax/mail/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Ljavax/mail/Authenticator;->requestingUserName:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method protected final getDefaultUserName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingUserName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 1

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    .line 130
    iget v0, p0, Ljavax/mail/Authenticator;->requestingPort:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingPrompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    .line 123
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingSite:Ljava/net/InetAddress;

    return-object v0
.end method

.method final requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "defaultUserName"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljavax/mail/Authenticator;->reset()V

    .line 110
    iput-object p1, p0, Ljavax/mail/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 111
    iput p2, p0, Ljavax/mail/Authenticator;->requestingPort:I

    .line 112
    iput-object p3, p0, Ljavax/mail/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Ljavax/mail/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Ljavax/mail/Authenticator;->requestingUserName:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljavax/mail/Authenticator;->getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method
