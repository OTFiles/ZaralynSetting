.class Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;
.super Ljava/lang/Object;
.source "SettingsLauncherAllAboutReadboy.java"

# interfaces
.implements Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherAllAboutReadboy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    .line 195
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitBtns(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "btnClassic"    # Landroid/view/View;
    .param p2, "chooseClassic"    # Landroid/widget/TextView;
    .param p3, "btnNewyear"    # Landroid/view/View;
    .param p4, "chooseNewyear"    # Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-virtual {v0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isLauncherNewYearSkinEnable(Landroid/content/Context;)I

    move-result v1

    .line 201
    .local v1, "showEnableNewYearSkin":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iput-object p2, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_classic:Landroid/widget/TextView;

    .line 203
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iput-object p1, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->ll_btn_launcher_skin_classic:Landroid/view/View;

    .line 204
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iget-object v2, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->ll_btn_launcher_skin_classic:Landroid/view/View;

    new-instance v3, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$1;-><init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iput-object p4, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->tv_chooser_launcher_skin_newyear:Landroid/widget/TextView;

    .line 216
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iput-object p3, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->ll_btn_launcher_skin_newyear:Landroid/view/View;

    .line 217
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iget-object v2, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->ll_btn_launcher_skin_newyear:Landroid/view/View;

    new-instance v3, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;-><init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-virtual {v2}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->updateLauncherNewYearSkinStatus()V

    .line 232
    .end local v1
    :cond_0
    return-void
.end method
