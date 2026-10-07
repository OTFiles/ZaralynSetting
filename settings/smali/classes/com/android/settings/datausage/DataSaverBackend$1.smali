.class Lcom/android/settings/datausage/DataSaverBackend$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSaverBackend;

    .line 189
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onRestrictBackgroundChanged$1(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .line 205
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->access$000(Lcom/android/settings/datausage/DataSaverBackend;Z)V

    return-void
.end method

.method public static synthetic lambda$onUidPoliciesChanged$0(Lcom/android/settings/datausage/DataSaverBackend$1;II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidPolicies"    # I

    .line 196
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->access$100(Lcom/android/settings/datausage/DataSaverBackend;II)V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public onSubscriptionOverride(III)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I

    .line 210
    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidPolicies"    # I

    .line 196
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    return-void
.end method
