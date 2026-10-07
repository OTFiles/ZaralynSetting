.class Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater$1;
.super Ljava/lang/Object;
.source "AppActionResetButtonPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;

    .line 204
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater$1;->this$1:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater$1;->this$1:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->initTwoButtons()V

    .line 208
    return-void
.end method
