.class Lcom/android/settings/notification/AppNotificationSettings$1;
.super Landroid/os/AsyncTask;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .line 92
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "unused"    # [Ljava/lang/Void;

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v2, v2, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v3, v3, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/AppNotificationSettings;->access$002(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/AppNotificationSettings;->access$000(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationSettings;->access$100(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Void;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v0}, Lcom/android/settings/notification/AppNotificationSettings;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/AppNotificationSettings;->access$200(Lcom/android/settings/notification/AppNotificationSettings;)V

    .line 106
    return-void
.end method
