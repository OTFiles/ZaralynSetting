.class public Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;
.super Ljava/lang/Object;
.source "ColorPaperLikeModeFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorPaperLikeModeFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeInfoWrapper"
.end annotation


# instance fields
.field public mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

.field public modeID:I

.field public modename:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ColorPaperLikeModeFunc;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;
    .param p2, "displayMode"    # Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 316
    iput-object p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 318
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 319
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->modeID:I

    .line 320
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$ModeInfoWrapper;->modename:Ljava/lang/String;

    return-object v0
.end method
