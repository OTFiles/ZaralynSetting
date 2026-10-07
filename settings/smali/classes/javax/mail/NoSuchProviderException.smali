.class public Ljavax/mail/NoSuchProviderException;
.super Ljavax/mail/MessagingException;
.source "NoSuchProviderException.java"


# static fields
.field private static final serialVersionUID:J = 0x6fd4e6b3cb29cd5bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method
