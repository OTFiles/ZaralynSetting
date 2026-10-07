.class Lcom/android/settings/wifi/LongPressAccessPointPreference$1;
.super Ljava/lang/Object;
.source "LongPressAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/LongPressAccessPointPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/LongPressAccessPointPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference$1;->this$0:Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference$1;->this$0:Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-static {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->access$000(Lcom/android/settings/wifi/LongPressAccessPointPreference;)Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference$1;->this$0:Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-static {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->access$000(Lcom/android/settings/wifi/LongPressAccessPointPreference;)Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference$1;->this$0:Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;->onClickWifiIcon(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V

    .line 65
    :cond_0
    return-void
.end method
