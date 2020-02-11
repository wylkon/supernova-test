/**
 *  Created by [Author].
 */

package com.company_name.project.activity;

import android.util.TypedValue;
import android.widget.ImageView;
import android.animation.*;
import android.widget.TextView;
import android.os.Bundle;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.graphics.Color;
import android.widget.Button;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import com.company_name.project.R;
import io.supernova.uitoolkit.animation.ViewBackgroundProperties;
import android.content.Context;
import android.support.constraint.ConstraintLayout;
import android.content.Intent;


public class AndroidActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, AndroidActivity.class);
	}
	
	private ConstraintLayout viewConstraintLayout;
	private Button rectangleButton;
	private ImageView operationImageView;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.android_activity);
		this.init();
	}
	
	private void init() {
	
		// Configure View component
		viewConstraintLayout = this.findViewById(R.id.view_constraint_layout);
		
		// Configure Rectangle component
		rectangleButton = this.findViewById(R.id.rectangle_button);
		rectangleButton.setOnClickListener((view) -> {
	this.onRectanglePressed();
});
		
		// Configure operation component
		operationImageView = this.findViewById(R.id.operation_image_view);
	}
	
	public void onRectanglePressed() {
	
		startAnimationOne();
	}
	
	public void startAnimationOne() {
	
		ObjectAnimator animator1 = ObjectAnimator.ofPropertyValuesHolder(viewConstraintLayout, PropertyValuesHolder.ofKeyframe(View.SCALE_X, Keyframe.ofFloat(0f, 0.3f), Keyframe.ofFloat(0.2f, 1.1f), Keyframe.ofFloat(0.4f, 0.9f), Keyframe.ofFloat(0.6f, 1.03f), Keyframe.ofFloat(0.8f, 0.97f), Keyframe.ofFloat(1f, 1f)), PropertyValuesHolder.ofKeyframe(View.SCALE_Y, Keyframe.ofFloat(0f, 0.3f), Keyframe.ofFloat(0.2f, 1.1f), Keyframe.ofFloat(0.4f, 0.9f), Keyframe.ofFloat(0.6f, 1.03f), Keyframe.ofFloat(0.8f, 0.97f), Keyframe.ofFloat(1f, 1f)));
		animator1.setDuration(1000);
		animator1.setInterpolator(PathInterpolatorCompat.create(0.22f, 0.61f, 0.36f, 1f));
		
		ObjectAnimator animator2 = ObjectAnimator.ofPropertyValuesHolder(viewConstraintLayout, PropertyValuesHolder.ofKeyframe(View.ALPHA, Keyframe.ofFloat(0f, 0f), Keyframe.ofFloat(0.6f, 1f), Keyframe.ofFloat(1f, 1f)));
		animator2.setDuration(1000);
		animator2.setInterpolator(PathInterpolatorCompat.create(0.22f, 0.61f, 0.36f, 1f));
		
		AnimatorSet animatorSet1 = new AnimatorSet();
		animatorSet1.playTogether(animator1, animator2);
		animatorSet1.setTarget(viewConstraintLayout);
		
		ObjectAnimator animator3 = ObjectAnimator.ofPropertyValuesHolder(operationImageView, PropertyValuesHolder.ofFloat(View.ROTATION, -200f, 0f));
		animator3.setDuration(1000);
		animator3.setInterpolator(PathInterpolatorCompat.create(0f, 0f, 1f, 1f));
		
		ObjectAnimator animator4 = ObjectAnimator.ofPropertyValuesHolder(operationImageView, PropertyValuesHolder.ofFloat(View.ALPHA, 0f, 1f));
		animator4.setDuration(1000);
		animator4.setInterpolator(PathInterpolatorCompat.create(0f, 0f, 1f, 1f));
		
		AnimatorSet animatorSet2 = new AnimatorSet();
		animatorSet2.playTogether(animator3, animator4);
		animatorSet2.setTarget(operationImageView);
		
		AnimatorSet animatorSet3 = new AnimatorSet();
		animatorSet3.playTogether(animatorSet1, animatorSet2);
		animatorSet3.start();
	}
}
