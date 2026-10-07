.class Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;
.super Landroid/os/AsyncTask;
.source "AutoInstallUninstallApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoInstallUninstallApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoInstallUninstallApk;


# direct methods
.method private constructor <init>(Lcom/android/settings/AutoInstallUninstallApk;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->this$0:Lcom/android/settings/AutoInstallUninstallApk;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AutoInstallUninstallApk;Lcom/android/settings/AutoInstallUninstallApk$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/AutoInstallUninstallApk;
    .param p2, "x1"    # Lcom/android/settings/AutoInstallUninstallApk$1;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;-><init>(Lcom/android/settings/AutoInstallUninstallApk;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->this$0:Lcom/android/settings/AutoInstallUninstallApk;

    const-string v1, "/storage/emulated/0"

    const-string v2, ".apk"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/AutoInstallUninstallApk;->GetAllFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 74
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->this$0:Lcom/android/settings/AutoInstallUninstallApk;

    invoke-static {v0}, Lcom/android/settings/AutoInstallUninstallApk;->access$100(Lcom/android/settings/AutoInstallUninstallApk;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->this$0:Lcom/android/settings/AutoInstallUninstallApk;

    invoke-static {v0}, Lcom/android/settings/AutoInstallUninstallApk;->access$200(Lcom/android/settings/AutoInstallUninstallApk;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->this$0:Lcom/android/settings/AutoInstallUninstallApk;

    invoke-static {v0}, Lcom/android/settings/AutoInstallUninstallApk;->access$100(Lcom/android/settings/AutoInstallUninstallApk;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->this$0:Lcom/android/settings/AutoInstallUninstallApk;

    invoke-static {v0}, Lcom/android/settings/AutoInstallUninstallApk;->access$200(Lcom/android/settings/AutoInstallUninstallApk;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
