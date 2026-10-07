.class public Lcom/sun/activation/registries/MimeTypeEntry;
.super Ljava/lang/Object;
.source "MimeTypeEntry.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mime_type"    # Ljava/lang/String;
    .param p2, "file_ext"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MIMETypeEntry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
