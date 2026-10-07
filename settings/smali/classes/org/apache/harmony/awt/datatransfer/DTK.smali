.class public abstract Lorg/apache/harmony/awt/datatransfer/DTK;
.super Ljava/lang/Object;
.source "DTK.java"


# instance fields
.field protected final dataTransferThread:Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

.field private nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

.field private nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

.field protected systemFlavorMap:Ljava/awt/datatransfer/SystemFlavorMap;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    .line 43
    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    .line 50
    new-instance v0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

    invoke-direct {v0, p0}, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;-><init>(Lorg/apache/harmony/awt/datatransfer/DTK;)V

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->dataTransferThread:Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

    .line 51
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->dataTransferThread:Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->start()V

    .line 52
    return-void
.end method

.method private static createDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .locals 3

    .line 133
    invoke-static {}, Lorg/apache/harmony/misc/SystemUtils;->getOS()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "awt.4E"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0    # 0x2
    const-string v0, "org.apache.harmony.awt.datatransfer.linux.LinuxDTK"

    .line 139
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v0
    :pswitch_1    # 0x1
    const-string v0, "org.apache.harmony.awt.datatransfer.windows.WinDTK"

    .line 136
    .restart local v0
    nop

    .line 142
    :goto_0
    nop

    .line 146
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/awt/datatransfer/DTK;

    .line 147
    .local v1, "dtk":Lorg/apache/harmony/awt/datatransfer/DTK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 148
    .end local v1
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public static getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .locals 3

    .line 57
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getContextLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->shutdownPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v1

    .line 64
    .local v1, "instance":Lorg/apache/harmony/awt/datatransfer/DTK;
    if-nez v1, :cond_1

    .line 65
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->createDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    move-object v1, v2

    .line 66
    invoke-static {v1}, Lorg/apache/harmony/awt/ContextStorage;->setDTK(Lorg/apache/harmony/awt/datatransfer/DTK;)V

    .line 69
    :cond_1
    monitor-exit v0

    return-object v1

    .line 57
    .end local v1
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/awt/datatransfer/DataFlavor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fm"    # Ljava/awt/datatransfer/SystemFlavorMap;
    .param p2, "flav"    # Ljava/awt/datatransfer/DataFlavor;
    .param p3, "nat"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p1, p3, p2}, Ljava/awt/datatransfer/SystemFlavorMap;->addFlavorForUnencodedNative(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)V

    .line 196
    invoke-virtual {p1, p2, p3}, Ljava/awt/datatransfer/SystemFlavorMap;->addUnencodedNativeForFlavor(Ljava/awt/datatransfer/DataFlavor;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fm"    # Ljava/awt/datatransfer/SystemFlavorMap;
    .param p2, "charsets"    # [Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .param p4, "nat"    # Ljava/lang/String;

    .line 203
    invoke-static {p1, p4, p3}, Lorg/apache/harmony/awt/datatransfer/TextFlavor;->addUnicodeClasses(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 209
    .end local v0
    return-void

    .line 205
    .restart local v0
    :cond_0
    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    aget-object v1, p2, v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    aget-object v1, p2, v0

    invoke-static {p1, p4, p3, v1}, Lorg/apache/harmony/awt/datatransfer/TextFlavor;->addCharsetClasses(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract createDragSourceContextPeer(Ljava/awt/dnd/DragGestureEvent;)Ljava/awt/dnd/peer/DragSourceContextPeer;
.end method

.method public abstract createDropTargetContextPeer(Ljava/awt/dnd/DropTargetContext;)Ljava/awt/dnd/peer/DropTargetContextPeer;
.end method

.method protected getCharsets()[Ljava/lang/String;
    .locals 5

    .line 158
    nop

    .line 159
    const-string v0, "UTF-16"

    const-string v1, "UTF-8"

    const-string v2, "unicode"

    const-string v3, "ISO-8859-1"

    const-string v4, "US-ASCII"

    .line 158
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .line 154
    const-string v0, "unicode"

    return-object v0
.end method

.method public getNativeClipboard()Lorg/apache/harmony/awt/datatransfer/NativeClipboard;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DTK;->newNativeClipboard()Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    return-object v0
.end method

.method public getNativeSelection()Lorg/apache/harmony/awt/datatransfer/NativeClipboard;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DTK;->newNativeSelection()Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    return-object v0
.end method

.method public declared-synchronized getSystemFlavorMap()Ljava/awt/datatransfer/SystemFlavorMap;
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->systemFlavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public abstract initDragAndDrop()V
.end method

.method public initSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;)V
    .locals 3
    .param p1, "fm"    # Ljava/awt/datatransfer/SystemFlavorMap;

    .line 163
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DTK;->getCharsets()[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "charsets":[Ljava/lang/String;
    nop

    .line 166
    sget-object v1, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    .line 167
    const-string v2, "text/plain"

    .line 165
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/awt/datatransfer/DataFlavor;Ljava/lang/String;)V

    .line 168
    nop

    .line 169
    const-string v1, "plain"

    .line 170
    const-string v2, "text/plain"

    .line 168
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    nop

    .line 173
    const-string v1, "html"

    .line 174
    const-string v2, "text/html"

    .line 172
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    nop

    .line 177
    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataProvider;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    .line 178
    const-string v2, "application/x-java-url"

    .line 176
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/awt/datatransfer/DataFlavor;Ljava/lang/String;)V

    .line 179
    nop

    .line 180
    const-string v1, "uri-list"

    .line 181
    const-string v2, "application/x-java-url"

    .line 179
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    nop

    .line 184
    sget-object v1, Ljava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Ljava/awt/datatransfer/DataFlavor;

    .line 185
    const-string v2, "application/x-java-file-list"

    .line 183
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/awt/datatransfer/DataFlavor;Ljava/lang/String;)V

    .line 187
    nop

    .line 188
    sget-object v1, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    .line 189
    const-string v2, "image/x-java-image"

    .line 187
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->appendSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;Ljava/awt/datatransfer/DataFlavor;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected abstract newNativeClipboard()Lorg/apache/harmony/awt/datatransfer/NativeClipboard;
.end method

.method protected abstract newNativeSelection()Lorg/apache/harmony/awt/datatransfer/NativeClipboard;
.end method

.method public abstract runEventLoop()V
.end method

.method public declared-synchronized setSystemFlavorMap(Ljava/awt/datatransfer/SystemFlavorMap;)V
    .locals 0
    .param p1, "newFlavorMap"    # Ljava/awt/datatransfer/SystemFlavorMap;

    monitor-enter p0

    .line 86
    :try_start_0
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->systemFlavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    .line 87
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 85
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
