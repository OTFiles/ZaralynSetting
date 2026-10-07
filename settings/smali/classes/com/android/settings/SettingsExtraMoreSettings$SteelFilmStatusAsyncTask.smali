.class public Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;
.super Landroid/os/AsyncTask;
.source "SettingsExtraMoreSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsExtraMoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SteelFilmStatusAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsExtraMoreSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsExtraMoreSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 595
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "values"    # [Ljava/lang/Integer;

    .line 604
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/settings/SettingsExtraMoreSettings;->setSteelFilmStatus(ZZ)V

    .line 607
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 595
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Integer;

    .line 612
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$200(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask$1;-><init>(Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 595
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .line 598
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 599
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 595
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
