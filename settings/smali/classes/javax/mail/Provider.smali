.class public Ljavax/mail/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Provider$Type;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private type:Ljavax/mail/Provider$Type;

.field private vendor:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljavax/mail/Provider$Type;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;
    .param p4, "vendor"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    .line 95
    iput-object p2, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljavax/mail/Provider$Type;
    .locals 1

    .line 103
    iget-object v0, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javax.mail.Provider["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0
.end method
