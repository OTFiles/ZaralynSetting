.class public Ljavax/mail/internet/AddressException;
.super Ljavax/mail/internet/ParseException;
.source "AddressException.java"


# static fields
.field private static final serialVersionUID:J = 0x7ec48f3eab5368f0L


# instance fields
.field protected pos:I

.field protected ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 91
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .line 100
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 101
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 102
    iput p3, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 103
    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .line 118
    iget v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    return v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    invoke-super {p0}, Ljavax/mail/internet/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 124
    return-object v0

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in string ``"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I

    if-gez v1, :cond_1

    .line 127
    return-object v0

    .line 128
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/mail/internet/AddressException;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
