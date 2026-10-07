.class public Lorg/apache/harmony/awt/datatransfer/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Lorg/apache/harmony/awt/datatransfer/DataProvider;


# instance fields
.field protected final contents:Ljava/awt/datatransfer/Transferable;

.field private flavors:[Ljava/awt/datatransfer/DataFlavor;

.field private nativeFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/awt/datatransfer/Transferable;)V
    .locals 0
    .param p1, "contents"    # Ljava/awt/datatransfer/Transferable;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    .line 55
    return-void
.end method

.method private getImageBitmap(Ljava/awt/Image;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .locals 6
    .param p1, "im"    # Ljava/awt/Image;

    .line 185
    instance-of v0, p1, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p1

    check-cast v0, Ljava/awt/image/BufferedImage;

    .line 187
    .local v0, "bi":Ljava/awt/image/BufferedImage;
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getImageBitmap32(Ljava/awt/image/BufferedImage;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    .line 192
    .local v2, "width":I
    invoke-virtual {p1, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    .line 193
    .local v3, "height":I
    if-lez v2, :cond_2

    if-gtz v3, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    new-instance v4, Ljava/awt/image/BufferedImage;

    invoke-direct {v4, v2, v3, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 196
    move-object v1, v4

    .line 198
    .local v1, "bi":Ljava/awt/image/BufferedImage;
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v4

    .line 199
    .local v4, "gr":Ljava/awt/Graphics;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v5, v0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 200
    invoke-virtual {v4}, Ljava/awt/Graphics;->dispose()V

    .line 201
    invoke-direct {p0, v1}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getImageBitmap32(Ljava/awt/image/BufferedImage;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v0

    return-object v0

    .line 194
    .end local v1
    .end local v4
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getImageBitmap32(Ljava/awt/image/BufferedImage;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .locals 15
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;

    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 206
    .local v0, "buffer":[I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/awt/image/DataBufferInt;

    .line 207
    .local v10, "data":Ljava/awt/image/DataBufferInt;
    const/4 v1, 0x0

    .line 208
    .local v1, "bufferPos":I
    invoke-virtual {v10}, Ljava/awt/image/DataBufferInt;->getNumBanks()I

    move-result v11

    .line 209
    .local v11, "bankCount":I
    invoke-virtual {v10}, Ljava/awt/image/DataBufferInt;->getOffsets()[I

    move-result-object v12

    .line 210
    .local v12, "offsets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    move v13, v1

    .end local v1
    .local v13, "bufferPos":I
    :goto_0
    if-lt v2, v11, :cond_0

    .line 216
    .end local v2
    new-instance v14, Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 217
    const/16 v5, 0x20

    const/high16 v6, 0xff0000

    const v7, 0xff00

    const/16 v8, 0xff

    .line 216
    move-object v1, v14

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/harmony/awt/datatransfer/RawBitmap;-><init>(IIIIIIILjava/lang/Object;)V

    return-object v14

    .line 211
    .restart local v2
    :cond_0
    invoke-virtual {v10, v2}, Ljava/awt/image/DataBufferInt;->getData(I)[I

    move-result-object v1

    .line 212
    .local v1, "fragment":[I
    aget v3, v12, v2

    .line 213
    array-length v4, v1

    aget v5, v12, v2

    sub-int/2addr v4, v5

    .line 212
    invoke-static {v1, v3, v0, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    array-length v3, v1

    aget v4, v12, v2

    sub-int/2addr v3, v4

    add-int/2addr v13, v3

    .line 210
    .end local v1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getNativesForFlavors([Ljava/awt/datatransfer/DataFlavor;)Ljava/util/List;
    .locals 7
    .param p0, "flavors"    # [Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/awt/datatransfer/DataFlavor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "natives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object v1

    check-cast v1, Ljava/awt/datatransfer/SystemFlavorMap;

    .line 84
    nop

    .line 87
    .local v1, "flavorMap":Ljava/awt/datatransfer/SystemFlavorMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 96
    .end local v2
    return-object v0

    .line 88
    .restart local v2
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/awt/datatransfer/SystemFlavorMap;->getNativesForFlavor(Ljava/awt/datatransfer/DataFlavor;)Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 87
    .end local v3
    .end local v4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .restart local v3
    .restart local v4
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, "nativeFormat":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 92
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5
    goto :goto_1
.end method

.method private getText(Z)Ljava/lang/String;
    .locals 5
    .param p1, "htmlOnly"    # Z

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v0}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 111
    .local v0, "flavors":[Ljava/awt/datatransfer/DataFlavor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 128
    .end local v1
    const/4 v1, 0x0

    return-object v1

    .line 112
    .restart local v1
    :cond_0
    aget-object v2, v0, v1

    .line 113
    .local v2, "f":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    goto :goto_1

    .line 116
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lorg/apache/harmony/awt/datatransfer/DataSource;->isHtmlFlavor(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    goto :goto_1

    .line 120
    :cond_2
    :try_start_0
    const-class v3, Ljava/lang/String;

    .line 121
    invoke-virtual {v2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v3, v2}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 124
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-virtual {v2, v3}, Ljava/awt/datatransfer/DataFlavor;->getReaderForText(Ljava/awt/datatransfer/Transferable;)Ljava/io/Reader;

    move-result-object v3

    .line 125
    .local v3, "r":Ljava/io/Reader;
    invoke-direct {p0, v3}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getTextFromReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 126
    .end local v3
    :catch_0
    move-exception v3

    .line 111
    .end local v2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getTextFromReader(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 103
    .local v1, "chunk":[C
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-gtz v2, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 103
    :cond_0
    nop

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .end local v3
    goto :goto_0
.end method

.method private isHtmlFlavor(Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 2
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;

    .line 58
    const-string v0, "html"

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v0}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method public getFileList()[Ljava/lang/String;
    .locals 2

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    sget-object v1, Ljava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v0, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 139
    .end local v0
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHTML()Ljava/lang/String;
    .locals 1

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFormats()[Ljava/lang/String;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getNativeFormatsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNativeFormatsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->nativeFormats:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 75
    .local v0, "flavors":[Ljava/awt/datatransfer/DataFlavor;
    invoke-static {v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getNativesForFlavors([Ljava/awt/datatransfer/DataFlavor;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->nativeFormats:Ljava/util/List;

    .line 78
    .end local v0
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->nativeFormats:Ljava/util/List;

    return-object v0
.end method

.method public getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .locals 6

    .line 165
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v0}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 167
    .local v0, "flavors":[Ljava/awt/datatransfer/DataFlavor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 181
    .end local v1
    const/4 v1, 0x0

    return-object v1

    .line 168
    .restart local v1
    :cond_0
    aget-object v2, v0, v1

    .line 169
    .local v2, "f":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    .line 170
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2

    const-class v4, Ljava/awt/Image;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    sget-object v4, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v2, v4}, Ljava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    invoke-virtual {v2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorSerializedObjectType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v4, v2}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/awt/Image;

    .line 175
    .local v4, "im":Ljava/awt/Image;
    invoke-direct {p0, v4}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getImageBitmap(Ljava/awt/Image;)Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v5

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 176
    .end local v4
    :catch_0
    move-exception v4

    .line 167
    .end local v2
    .end local v3
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSerializedObject(Ljava/lang/Class;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .line 222
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/awt/datatransfer/DataFlavor;

    invoke-direct {v1, p1, v0}, Ljava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    .local v1, "f":Ljava/awt/datatransfer/DataFlavor;
    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    invoke-interface {v2, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    .line 224
    .local v2, "s":Ljava/io/Serializable;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 227
    .end local v1
    .end local v2
    .end local v3
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataSource;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v0, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 147
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 148
    .end local v0
    :catch_0
    move-exception v0

    .line 150
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSource;->contents:Ljava/awt/datatransfer/Transferable;

    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataSource;->uriFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v0, v1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 151
    .restart local v0
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 152
    .end local v0
    :catch_1
    move-exception v0

    .line 154
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v0
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 156
    .end local v0
    :catch_2
    move-exception v0

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNativeFormatAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nativeFormat"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataSource;->getNativeFormatsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
