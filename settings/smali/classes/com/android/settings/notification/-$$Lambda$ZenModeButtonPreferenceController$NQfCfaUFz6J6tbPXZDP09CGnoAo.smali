.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/ZenModeButtonPreferenceController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;->f$0:Lcom/android/settings/notification/ZenModeButtonPreferenceController;

    iput p2, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;->f$0:Lcom/android/settings/notification/ZenModeButtonPreferenceController;

    iget v1, p0, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->lambda$updateZenButtonOnClickListener$3(Lcom/android/settings/notification/ZenModeButtonPreferenceController;ILandroid/view/View;)V

    return-void
.end method
