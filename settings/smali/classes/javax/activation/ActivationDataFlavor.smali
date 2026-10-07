.class public Ljavax/activation/ActivationDataFlavor;
.super Lmyjava/awt/datatransfer/DataFlavor;
.source "ActivationDataFlavor.java"


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeObject:Ljavax/activation/MimeType;

.field private mimeType:Ljava/lang/String;

.field private representationClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "representationClass"    # Ljava/lang/Class;
    .param p2, "humanPresentableName"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 72
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 122
    invoke-super {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 124
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "representationClass"    # Ljava/lang/Class;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "humanPresentableName"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 72
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 97
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 72
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 144
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 146
    :try_start_0
    const-string v0, "java.io.InputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 150
    :goto_0
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 2
    .param p1, "dataFlavor"    # Lmyjava/awt/datatransfer/DataFlavor;

    .line 198
    invoke-virtual {p0, p1}, Ljavax/activation/ActivationDataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 198
    return v0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1

    .line 168
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "mt":Ljavax/activation/MimeType;
    :try_start_0
    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljavax/activation/MimeType;

    iget-object v2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 219
    :cond_0
    new-instance v1, Ljavax/activation/MimeType;

    invoke-direct {v1, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 225
    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    invoke-virtual {v1, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v1

    return v1

    .line 220
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljavax/activation/MimeTypeParseException;
    iget-object v2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 261
    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .line 245
    return-object p2
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "humanPresentableName"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 187
    return-void
.end method
