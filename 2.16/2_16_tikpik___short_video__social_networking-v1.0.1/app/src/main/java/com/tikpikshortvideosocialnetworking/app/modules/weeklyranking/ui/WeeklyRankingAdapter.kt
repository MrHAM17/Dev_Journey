package com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowWeeklyrankingBinding
import com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.model.WeeklyrankingRowModel
import kotlin.Int
import kotlin.collections.List

class WeeklyRankingAdapter(
  var list: List<WeeklyrankingRowModel>
) : RecyclerView.Adapter<WeeklyRankingAdapter.RowWeeklyrankingVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowWeeklyrankingVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_weeklyranking,parent,false)
    return RowWeeklyrankingVH(view)
  }

  override fun onBindViewHolder(holder: RowWeeklyrankingVH, position: Int) {
    val weeklyrankingRowModel = WeeklyrankingRowModel()
    // TODO uncomment following line after integration with data source
    // val weeklyrankingRowModel = list[position]
    holder.binding.weeklyrankingRowModel = weeklyrankingRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<WeeklyrankingRowModel>) {
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
      item: WeeklyrankingRowModel
    ) {
    }
  }

  inner class RowWeeklyrankingVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowWeeklyrankingBinding = RowWeeklyrankingBinding.bind(itemView)
    init {
      binding.btnFollowing.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, WeeklyrankingRowModel())
      }
    }
  }
}
