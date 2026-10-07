.class Lcom/android/settings/OthersSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "OthersSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OthersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OthersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OthersSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/OthersSettings;

    .line 226
    iput-object p1, p0, Lcom/android/settings/OthersSettings$2;->this$0:Lcom/android/settings/OthersSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 233
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    .local v0, "isExternalPath":Z
    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    const-string v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/settings/OthersSettings$2;->this$0:Lcom/android/settings/OthersSettings;

    invoke-virtual {v1}, Lcom/android/settings/OthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f12060f

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :cond_1
    const-string v1, "shared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unmounted"

    .line 241
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/android/settings/OthersSettings$2;->this$0:Lcom/android/settings/OthersSettings;

    invoke-virtual {v1}, Lcom/android/settings/OthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f12060e

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/OthersSettings$2;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v1}, Lcom/android/settings/OthersSettings;->access$300(Lcom/android/settings/OthersSettings;)V

    .line 246
    return-void
.end method
