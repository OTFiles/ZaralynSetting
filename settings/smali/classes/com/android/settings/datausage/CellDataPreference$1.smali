.class Lcom/android/settings/datausage/CellDataPreference$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/CellDataPreference;

    .line 189
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$1;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$1;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/CellDataPreference;->access$000(Lcom/android/settings/datausage/CellDataPreference;)V

    .line 196
    return-void
.end method
