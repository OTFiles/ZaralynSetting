.class Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;
.super Ljava/lang/Object;
.source "StorageAsyncLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadApps()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    .line 78
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;->this$0:Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "otherUser"    # Landroid/content/pm/UserInfo;

    .line 81
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Landroid/content/pm/UserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;->compare(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I

    move-result p1

    return p1
.end method
