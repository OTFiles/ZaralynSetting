.class public Ljavax/mail/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Ljavax/mail/Header;->value:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Ljavax/mail/Header;->value:Ljava/lang/String;

    return-object v0
.end method
