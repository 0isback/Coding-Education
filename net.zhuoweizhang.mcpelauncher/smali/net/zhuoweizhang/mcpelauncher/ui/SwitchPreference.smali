.class public Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;
.super Landroid/preference/Preference;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field public content:Lde/ankri/views/Switch;

.field protected listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    .line 14
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    .line 18
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->switch_preference:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setWidgetLayoutResource(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    .line 14
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    .line 23
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->switch_preference:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setWidgetLayoutResource(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    .line 14
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    .line 28
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->switch_preference:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setWidgetLayoutResource(I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 34
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->switch_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/ankri/views/Switch;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    .line 35
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->getPersistedBoolean(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setChecked(Z)V

    .line 37
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    invoke-virtual {v0, p0}, Lde/ankri/views/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "SwitchPreference Switch is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->persistBoolean(Z)Z

    .line 50
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    invoke-interface {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;->onCheckedChange(Lde/ankri/views/Switch;)V

    .line 53
    :cond_0
    return-void
.end method

.method public setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    .prologue
    .line 44
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->listener:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;

    .line 45
    return-void
.end method
