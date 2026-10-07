.class Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;
.super Landroid/os/AsyncTask;
.source "ForcePortraitAppLandscape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ForcePortraitAppLandscape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadPortAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ForcePortraitAppLandscape;


# direct methods
.method private constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ForcePortraitAppLandscape;Lcom/android/settings/ForcePortraitAppLandscape$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ForcePortraitAppLandscape;
    .param p2, "x1"    # Lcom/android/settings/ForcePortraitAppLandscape$1;

    .line 224
    invoke-direct {p0, p1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;-><init>(Lcom/android/settings/ForcePortraitAppLandscape;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 224
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v1}, Lcom/android/settings/ForcePortraitAppLandscape;->access$200(Lcom/android/settings/ForcePortraitAppLandscape;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getAllAppNoSystemApp(Landroid/content/Context;)V

    .line 237
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 238
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 242
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->this$0:Lcom/android/settings/ForcePortraitAppLandscape;

    invoke-static {v0}, Lcom/android/settings/ForcePortraitAppLandscape;->access$500(Lcom/android/settings/ForcePortraitAppLandscape;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V

    .line 248
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 227
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 228
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ForcePortraitAppLandscape$ReloadPortAppsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .line 252
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 253
    return-void
.end method
