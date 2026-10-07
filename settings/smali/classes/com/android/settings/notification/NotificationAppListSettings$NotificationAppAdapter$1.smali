.class Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationAppListSettings$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

.field final synthetic val$vh:Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;Lcom/android/settings/notification/NotificationAppListSettings$AppRow;Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    .line 471
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    iput-object p3, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 480
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 481
    .local v0, "block":Z
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->appBackend:Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    iget v4, v4, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->uid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settings/notification/NotificationAppListSettings$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 482
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationAppListSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 483
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    iput-boolean v0, v1, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->banned:Z

    .line 484
    if-eqz v0, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1100(Lcom/android/settings/notification/NotificationAppListSettings;)I

    move-result v1

    if-lez v1, :cond_2

    .line 486
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1110(Lcom/android/settings/notification/NotificationAppListSettings;)I

    goto :goto_1

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1108(Lcom/android/settings/notification/NotificationAppListSettings;)I

    .line 491
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationAppListSettings$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1100(Lcom/android/settings/notification/NotificationAppListSettings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1200(Lcom/android/settings/notification/NotificationAppListSettings;I)V

    .line 492
    return-void
.end method
