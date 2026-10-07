.class Lcom/android/settings/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ClearDefaultsPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

.field final synthetic val$view:Landroid/support/v7/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 94
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->val$view:Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 99
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$300(Lcom/android/settings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 104
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V

    .line 107
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$400(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->val$view:Landroid/support/v7/preference/PreferenceViewHolder;

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, "autoLaunchView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v2, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$500(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V

    .line 112
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method
