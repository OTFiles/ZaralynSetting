.class public Ljavax/mail/FetchProfile$Item;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/FetchProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

.field public static final ENVELOPE:Ljavax/mail/FetchProfile$Item;

.field public static final FLAGS:Ljavax/mail/FetchProfile$Item;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "ENVELOPE"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    .line 128
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "CONTENT_INFO"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    .line 133
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "FLAGS"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    .line 103
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Ljavax/mail/FetchProfile$Item;->name:Ljava/lang/String;

    .line 142
    return-void
.end method
