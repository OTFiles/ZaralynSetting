.class public Lcom/android/settings/nfc/HowItWorks;
.super Landroid/app/Activity;
.source "HowItWorks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/HowItWorks;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/settings/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/HowItWorks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 16
    .local v0, "gotIt":Landroid/widget/Button;
    new-instance v1, Lcom/android/settings/nfc/HowItWorks$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/HowItWorks$1;-><init>(Lcom/android/settings/nfc/HowItWorks;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/nfc/HowItWorks;->finish()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
