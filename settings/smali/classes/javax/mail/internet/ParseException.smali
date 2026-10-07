.class public Ljavax/mail/internet/ParseException;
.super Ljavax/mail/MessagingException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x6a2a3a783fd59869L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method
