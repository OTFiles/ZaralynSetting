.class Lcom/android/settings/notification/NotificationAppListSettings$2;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 179
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$2;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exchangeEditContentLengthExchange(Z)V
    .locals 1
    .param p1, "bEnable"    # Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$2;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$100(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    return-void
.end method
