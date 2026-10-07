.class Lcom/android/settings/search/DeviceIndexUpdateJobService$1;
.super Ljava/lang/Object;
.source "DeviceIndexUpdateJobService.java"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/DeviceIndexUpdateJobService;->bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/DeviceIndexUpdateJobService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$manager:Landroidx/slice/SliceViewManager;

.field final synthetic val$returnSlice:[Landroidx/slice/Slice;

.field final synthetic val$slice:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroidx/slice/SliceViewManager;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/search/DeviceIndexUpdateJobService;

    .line 164
    iput-object p1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->this$0:Lcom/android/settings/search/DeviceIndexUpdateJobService;

    iput-object p2, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$returnSlice:[Landroidx/slice/Slice;

    iput-object p3, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$manager:Landroidx/slice/SliceViewManager;

    iput-object p5, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$slice:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 5
    .param p1, "s"    # Landroidx/slice/Slice;

    .line 168
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->this$0:Lcom/android/settings/search/DeviceIndexUpdateJobService;

    invoke-static {v1, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v1

    .line 169
    .local v1, "m":Landroidx/slice/SliceMetadata;
    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$returnSlice:[Landroidx/slice/Slice;

    aput-object p1, v2, v0

    .line 171
    iget-object v2, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 172
    iget-object v2, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$manager:Landroidx/slice/SliceViewManager;

    iget-object v3, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$slice:Landroid/net/Uri;

    invoke-virtual {v2, v3, p0}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 177
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DeviceIndexUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$slice:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be indexed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object v2, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;->val$returnSlice:[Landroidx/slice/Slice;

    aput-object p1, v2, v0

    .line 178
    .end local v1
    :goto_0
    return-void
.end method
