package com.hiredjobsearch.app.modules.experiencesetting.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowExperiencesettingBinding
import com.hiredjobsearch.app.modules.experiencesetting.`data`.model.ExperiencesettingRowModel
import kotlin.Int
import kotlin.collections.List

class ExperienceSettingAdapter(
  var list: List<ExperiencesettingRowModel>
) : RecyclerView.Adapter<ExperienceSettingAdapter.RowExperiencesettingVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowExperiencesettingVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_experiencesetting,parent,false)
    return RowExperiencesettingVH(view)
  }

  override fun onBindViewHolder(holder: RowExperiencesettingVH, position: Int) {
    val experiencesettingRowModel = ExperiencesettingRowModel()
    // TODO uncomment following line after integration with data source
    // val experiencesettingRowModel = list[position]
    holder.binding.experiencesettingRowModel = experiencesettingRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ExperiencesettingRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ExperiencesettingRowModel
    ) {
    }
  }

  inner class RowExperiencesettingVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowExperiencesettingBinding = RowExperiencesettingBinding.bind(itemView)
  }
}
